#!/usr/bin/env python3

''' This node using Mask RCNN to do instance segmentation on 2D images
Adapted from mask_rcnn.py -> wrapped the callback into a service

SUBSCRIBERS:
    camera/color/image_raw (sensor_msgs/Image): subscribe to the images from rgbd camera
PUBLISHERS:
    maskrcnn (sensor_msgs/Image): visualization results from maskrcnn
    maskrcnn/bbox (rgbd_object_detection/MaskrcnnResult): publish maskrcnn results
PARAMETERS:
    Threshold for the model: SCORE_THRESH_TEST
    Loop rate: loop_rate_
    Running duration: running_duration_
'''

from __future__ import print_function
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import torch, torchvision
import time
from rgbd_object_detection.msg import MaskrcnnResult
from sensor_msgs.msg import Image, RegionOfInterest
from std_srvs.srv import Empty, EmptyRequest, EmptyResponse
from threading import Lock
import copy
import subprocess

print(torch.__version__, "Use CUDA? ", torch.cuda.is_available())

# detectron2 setup
# Setup detectron2 logger
import detectron2
from detectron2.utils.logger import setup_logger
setup_logger()
# import some common libraries
import numpy as np
# import some common detectron2 utilities
from detectron2 import model_zoo
from detectron2.engine import DefaultPredictor
from detectron2.config import get_cfg
from detectron2.utils.visualizer import Visualizer
from detectron2.data import MetadataCatalog, DatasetCatalog
from detectron2.data.datasets import register_coco_instances
import os

class MaskRCNN:

    def __init__(self):
        self.result_pub_ = rospy.Publisher("maskrcnn", Image, queue_size=10)
        self.result_bbox_pub_ = rospy.Publisher('maskrcnn/bbox', MaskrcnnResult, queue_size=10)
        self.bridge_ = CvBridge()
        self.image_detection_service_ = rospy.Service("/run_maskrcnn", Empty, self.callback_run_maskrcnn)
        self.color_sub_ = rospy.Subscriber("camera/color/image_raw", Image, self.color_callback, queue_size=1)

        # detectron2 setup
        register_coco_instances('bondOnlyDataset_train', {}, 
                        '/home/edward/catkin_ws/src/rgbd_object_detection/config/annotations/train.json', 
                       '/home/edward/catkin_ws/src/rgbd_object_detection/config/train')
        self.my_bond_metadata_train_ = MetadataCatalog.get("bondOnlyDataset_train")

        self.cfg_ = get_cfg()
        self.cfg_.merge_from_file(model_zoo.get_config_file("Misc/cascade_mask_rcnn_R_50_FPN_3x.yaml"))
        self.cfg_.DATASETS.TRAIN = ("bondOnlyDataset_train",)
        self.cfg_.MODEL.WEIGHTS = os.path.join("/home/edward/catkin_ws/src/rgbd_object_detection/config/output", "model_final.pth")
        self.cfg_.MODEL.ROI_HEADS.SCORE_THRESH_TEST = 0.8  # set threshold for this model
        self.cfg_.MODEL.ROI_HEADS.NUM_CLASSES = 2
        self.cfg_.MODEL.DEVICE='cpu'
        self.class_names_ = ['chair', 'dining table']
        self.predictor_ = DefaultPredictor(self.cfg_)

        '''
        Interested categories and their ids in pretrained model

        chair	        0
        dining table	1
        '''
        self.interested_ids_ = [0, 1]

        self.latest_image_ = None # store the latest image from subscriber

        self.loop_rate_ = 6 # looping at 6Hz
        self.running_duration_ = 2 # Running for 2 seconds

        self.data_lock_ = Lock()


    def publish_result(self, img_header, predictions, color_image):
        ''' Publish the result from maskrcnn onto the topic

        Args:
            img_header: header from the image messgage
            predictions: prediction output from detectron2 model
            color_image: the original color image
        '''

        boxes = predictions.pred_boxes if predictions.has("pred_boxes") else None

        if predictions.has("pred_masks"):
            masks = np.asarray(predictions.pred_masks)
        else:
            return

        result_msg = MaskrcnnResult()
        result_msg.header = img_header
        result_msg.color_image = self.bridge_.cv2_to_imgmsg(color_image, "bgr8")

        for i in range(predictions.pred_classes.size()[0]):

            # ignore this box if it is not an interested catagory
            if not (predictions.pred_classes[i] in self.interested_ids_):
                continue

            result_msg.class_ids.append(int(predictions.pred_classes[i]))
            result_msg.class_names.append(str(np.array(self.class_names_)[predictions.pred_classes[i]]))
            result_msg.scores.append(predictions.scores[i])
            x1, y1, x2, y2 = boxes[i].tensor[0]
            mask = np.zeros(masks[i].shape, dtype="uint8")
            mask[masks[i, :, :]]=255
            mask = self.bridge_.cv2_to_imgmsg(mask)
            result_msg.masks.append(mask)

            box = RegionOfInterest()
            box.x_offset = int(x1)
            box.y_offset = int(y1)
            box.height = int(y2 - y1)
            box.width = int(x2 - x1)
            result_msg.boxes.append(box)

        return result_msg



    def color_callback(self, data):
        self.data_lock_.acquire()
        self.latest_image_ = data

        print('image~')

        self.data_lock_.release()

    
    def callback_run_maskrcnn(self, req):
        print('callback_run_maskrcnn~')
        self.data_lock_.acquire()
        # Read the image
        try:
            cv_image = self.bridge_.imgmsg_to_cv2(self.latest_image_, "bgr8")
            # print(cv_image.shape)
        except CvBridgeError as e:
            print(e)
            return
        # print(self.latest_image_)
        # print(self.latest_image_.header)
        header_copy = copy.deepcopy(self.latest_image_.header)
        # print(header_copy)
        self.data_lock_.release()

        # (rows, cols, channels) = self.latest_image_.shape
        # print("Received image: ", rows, " ", cols, " ", channels)

        # inference on image
        # start = time.time()
        outputs = self.predictor_(cv_image)
        outputs_cpu = outputs["instances"].to("cpu")
        # end = time.time()
        # print("Inference time: ", end - start)

        print("Classes list: ", outputs["instances"].pred_classes)
        print("Scores: ", outputs["instances"].scores)
        # print("Bounding boxes", outputs["instances"].pred_boxes)

        publish_msg = self.publish_result(header_copy, outputs_cpu, cv_image)
        self.result_bbox_pub_.publish(publish_msg)

        # visualize results
        visual = Visualizer(cv_image[:, :, ::-1], metadata=self.my_bond_metadata_train_, scale=1)
        out = visual.draw_instance_predictions(outputs_cpu)
        try:
            self.result_pub_.publish(self.bridge_.cv2_to_imgmsg(out.get_image()[:, :, ::-1], "bgr8"))
            # print('saved~')
            # cv2.imwrite('/home/ubuntu/Desktop/'+ str(time.time()) +'_test.jpg', out.get_image()[:, :, ::-1])
        except CvBridgeError as e:
            print(e)

        return EmptyResponse()

def main(args):
    segmentation_server = MaskRCNN()
    rospy.init_node('mask_rcnn', anonymous=True)
    rospy.spin()

if __name__ == '__main__':
    main(sys.argv)