#!/usr/bin/python3
import rospy
import yaml
from rgbd_object_detection.msg import computeAP_id

global recall_d

def callback(data):
    # set TP or FP
    TPorFP = []
    precision_array = []
    recall_array = []
    precision_n = 0
    precision_d = 0
    recall_n = 0
    for i in range (len(data.ingredient)):
        if data.ingredient[i].classification and data.ingredient[i].iou >= 0.5 and data.ingredient[i].confidence >= 0.0:
            TPorFP.append('TP')
            precision_n = precision_n+1
            precision_d = precision_d+1
            recall_n = recall_n+1
        else:
            TPorFP.append('FP')
            precision_d = precision_d+1
        precision = round(precision_n/precision_d, 3)
        precision_array.append(precision)
        recall = round(recall_n/recall_d, 3)
        recall_array.append(recall)
    print(precision_array, recall_array)
    average_precision = 0
    for i in range(len(data.ingredient)):
        if i == 0:
            average_precision = average_precision + max(precision_array)*(recall_array[i]-0)
            precision_array[i]=0
        else:
            average_precision = average_precision + max(precision_array)*(recall_array[i]-recall_array[i-1])
            precision_array[i]=0
    print("average_precision: ", round(average_precision, 6))
    

if __name__=='__main__':
    #init
    rospy.init_node('computeAP')
    rate = rospy.Rate(10)

    #get param from yaml
    param_path = rospy.get_param("~AllObjectGroundTruth")
    f = open(param_path, 'r')
    params_raw = f.read()
    f.close()
    GroundTruth = yaml.load(params_raw)
    recall_d = len(GroundTruth)
    
    #subscribe
    rospy.Subscriber("find_computeAP_id", computeAP_id, callback, queue_size = 10)

    rospy.spin()
