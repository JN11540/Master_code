#include "ros/ros.h"
#include <sensor_msgs/PointCloud2.h>
#include <pcl/point_types.h>
#include <pcl/io/ply_io.h>
#include <pcl/common/centroid.h>
#include <pcl/common/pca.h>
#include <pcl/common/common.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <sensor_msgs/Image.h>
#include <rgbd_object_detection/MaskrcnnResult.h>
#include <rgbd_object_detection/pc_utils.hpp>
#include <iostream>
#include <std_msgs/Header.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <pcl_conversions/pcl_conversions.h>
#include <vector>
#include <pcl/segmentation/extract_clusters.h>
#include "pcl/filters/extract_indices.h"
#include <pcl/surface/concave_hull.h>
#include <visualization_msgs/MarkerArray.h>
#include <visualization_msgs/Marker.h>
#include <memory>
#include <geometry_msgs/TransformStamped.h>
#include <eigen_conversions/eigen_msg.h>
#include <opencv2/opencv.hpp>
#include <rgbd_object_detection/highest_z.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/voxel_grid.h>
#include <rgbd_object_detection/camera_utils.hpp>
#include <tf2_ros/transform_listener.h>

class Camera{
    public:
    float color_cx_;
    float color_cy_;
    float color_fx_;
    float color_fy_; // Camera intrinsics

    Eigen::Matrix4d Tco2l_; // extrinsic, from camera optical to lidar frame transformation

    int image_height_ = 720;
    int image_width_ = 1280;

    Eigen::Affine3d create_rotation_matrix(double ax, double ay, double az)
    {
    Eigen::Affine3d rx =
        Eigen::Affine3d(Eigen::AngleAxisd(ax, Eigen::Vector3d(1, 0, 0)));
    Eigen::Affine3d ry =
        Eigen::Affine3d(Eigen::AngleAxisd(ay, Eigen::Vector3d(0, 1, 0)));
    Eigen::Affine3d rz =
        Eigen::Affine3d(Eigen::AngleAxisd(az, Eigen::Vector3d(0, 0, 1)));

    return rz * ry * rx;
    }

    Camera();

    /*! \brief construct camera object with instrinsics
    */
    Camera(ros::NodeHandle &nh)
    {
        nh.getParam("/color_cx", color_cx_);
        nh.getParam("/color_cy", color_cy_);
        nh.getParam("/color_fx", color_fx_);
        nh.getParam("/color_fy", color_fy_);

        nh.getParam("/image_height", image_height_);
        nh.getParam("/image_width", image_width_);

        std::vector<double> rpy_lc;
        std::vector<double> t_lc;
        nh.getParam("/rpy_lc", rpy_lc);
        nh.getParam("/t_lc", t_lc);

        Eigen::Affine3d Rot_lc = create_rotation_matrix(rpy_lc[0], rpy_lc[1], rpy_lc[2]);
        Eigen::Affine3d Trans_lc(Eigen::Translation3d(Eigen::Vector3d(t_lc[0], t_lc[1], t_lc[2])));
        // Eigen::Matrix4d m = Trans_lc.matrix();
        // std::cout << "Trans_lc" << std::endl;
        // std::cout << m << std::endl;
        // transformation from camera link to lidar
        Eigen::Affine3d T_cl = (Trans_lc * Rot_lc).inverse();
        // Eigen::Matrix4d T_cl = (Trans_lc * Rot_lc).inverse().matrix();

        std::vector<double> rpy_c2co;
        std::vector<double> t_c2co;
        nh.getParam("/rpy_c2co", rpy_c2co);
        nh.getParam("/t_c2co", t_c2co);
        Eigen::Affine3d Rot_c2co = create_rotation_matrix(rpy_c2co[0], rpy_c2co[1], rpy_c2co[2]);
        Eigen::Affine3d Trans_c2co(Eigen::Translation3d(Eigen::Vector3d(t_c2co[0], t_c2co[1], t_c2co[2])));
        // transformation from camera optical frame to camera link
        Eigen::Affine3d T_co2c = (Trans_c2co * Rot_c2co).inverse();
        // Eigen::Matrix4d T_co2c = (Trans_c2co * Rot_c2co).inverse().matrix();



        // transformation from camera optical frame to lidar    
        Tco2l_ = (T_co2c * T_cl).matrix();

        // validated by comparing to ros tf
        // std::cout << Tco2l_ << std::endl;
    }

    /*! \brief return 3 by 3 intrinsic matrix
    */
    Eigen::Matrix<double, 3, 3> K() const
    {
        Eigen::Matrix<double, 3, 3> k;
        k << color_fx_, 0, color_cx_, 0, color_fy_, color_cy_, 0, 0, 1;
        return k;
    }

    /*! \brief transform a point from lidar coordinate to camera coordinate
    */
    Eigen::Matrix<double, 3, 1> lidar2camera(const Eigen::Matrix<double, 3, 1> &p_l)
    {
        // std::cout << Tco2l_ * p_l.colwise().homogeneous().matrix() << std::endl;
        // //  EX -2.29447 -0.369962 -0.238827 1
        // std::cout << (Tco2l_ * p_l.colwise().homogeneous()).colwise().hnormalized().matrix() << std::endl;
        // //  EX -2.29447 -0.369962 -0.238827

        return (Tco2l_ * p_l.colwise().homogeneous()).colwise().hnormalized();
    }

    /*! \brief transform a point from camera coordinate to sensor coordinate
    */
    Eigen::Matrix<int, 2, 1> camera2pixel(const Eigen::Matrix<double, 3, 1> &p_c)
    {
        return Eigen::Matrix<int, 2, 1>(
            color_fx_ * p_c(0, 0) / p_c(2, 0) + color_cx_,
            color_fy_ * p_c(1, 0) / p_c(2, 0) + color_cy_);
    }

    /*! \brief transform a point in the lidar coordinate to pixel position (sensor coordinate)
    */
    Eigen::Matrix<int, 2, 1> lidar2pixel(const Eigen::Matrix<double, 3, 1> &p_l)
    {
        return camera2pixel(lidar2camera(p_l));
    }

    /*! \brief transform a point from lidar coordinate to map coordinate
    *           Given map to lidar transform and 3D point
    */
    Eigen::Matrix<double, 3, 1> lidar2map(const Eigen::Matrix<double, 3, 1> &p_l, const Eigen::Matrix<double, 4, 4> &Tml)
    {
        return (Tml * p_l.colwise().homogeneous()).colwise().hnormalized();
    }

    /*! \brief given a pixel position and a depth, transfer it into a 3D point in camere frame (all in color camera frame)
    */
    Eigen::Matrix<float, 3, 1> depth2camera(const Eigen::Matrix<int, 2, 1> &p_s, unsigned int depth)
    {
        float z = float(depth);
        float x = (p_s[0] - color_cx_) * z / color_fx_;
        float y = (p_s[1] - color_cy_) * z / color_fy_;

        return Eigen::Matrix<float, 3, 1>(x, y, z);
    }
};

class ObjectDetectorV4
{
    public:

        typedef pcl::PointXYZ PointT;
        typedef pcl::PointCloud<PointT> PointCloud;

        struct PointCloudProjection
        {
            std::vector<Eigen::Matrix<int, 2, 1>> points_2d;
            std::vector<double> depth; // depth of each corresponding point
        };

        ros::Publisher objects_pub_;
        ros::Publisher test_pub_;
        ros::Publisher clustered_pub_;
        ros::Publisher object_highest_z_pub_;

        message_filters::Subscriber<sensor_msgs::PointCloud2> raw_pc_sub_;
        message_filters::Subscriber<rgbd_object_detection::MaskrcnnResult> result_sub_;

        typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::PointCloud2, rgbd_object_detection::MaskrcnnResult> MySyncPolicy;
        message_filters::Synchronizer<MySyncPolicy> sync_;

        Camera my_camera_;

        int marker_id_ = 0;
        double loop_rate_ = 6.0; // approximately running at 6Hz, delete marker at this rate

        ros::Publisher convex_hull_pub_;

        double ground_plane_height_ = -0.35; // ground plane z axis value

        // define colormap for overlap image and pointcloud
        cv::Mat colormap_;

        ros::Publisher overlap_image_pub_;

        // transform listener
        tf2_ros::Buffer tfBuffer_;
        tf2_ros::TransformListener tfListener_;

        float max_distance_ = 2.8;
        float max_dimension_ratio_ = 4.0;
    int count = 0;
    public:
        ObjectDetectorV4(ros::NodeHandle &nh) : raw_pc_sub_(nh, "velodyne_points", 100),
                                                result_sub_(nh, "maskrcnn/bbox", 1),
                                                sync_(MySyncPolicy(100), raw_pc_sub_, result_sub_),
                                                my_camera_(nh),
                                                tfListener_(tfBuffer_)
        {
            objects_pub_ = nh.advertise<sensor_msgs::PointCloud2>("objects_clouds", 10);
            test_pub_ = nh.advertise<sensor_msgs::PointCloud2>("test_clouds", 10);
            clustered_pub_ = nh.advertise<sensor_msgs::PointCloud2>("clustered_clouds", 10);
            object_highest_z_pub_ = nh.advertise<rgbd_object_detection::highest_z>("high_z_pub", 10);
            sync_.registerCallback(boost::bind(&ObjectDetectorV4::mask_callback, this, _1, _2));

            convex_hull_pub_ = nh.advertise<visualization_msgs::MarkerArray>("object_convex_hull", 100);

            cv::Mat grayscale(256, 1, CV_8UC1);
            for (int i = 0; i < 256; i++)
            {
                grayscale.at<uchar>(i) = i;
            }
            cv::applyColorMap(grayscale, colormap_, cv::COLORMAP_JET);

            overlap_image_pub_ = nh.advertise<sensor_msgs::Image>("overlap_image", 10);
            }

            void extract_by_mask(PointCloud::Ptr input_pc,
                                       const cv::Mat &mask,
                                       std::vector<PointCloud::Ptr> &object_pc_list,
                                       const PointCloudProjection &cloud_2d)
            {
                // input_pc: pcl點雲(x,y,z)
                // mask: opencv格式的遮罩 (0 or 255)
                // object_pc_list: 收集"遮罩中物件框框內"的pcl點雲
                // cloud_2d: px,py(px,py為pcl點雲打在影像的二維座標)+pcl點雲x座標(當作影像深度)

                PointCloud::Ptr current_cloud(new PointCloud);

                // std::cout << my_camera_.image_width_ << my_camera_.image_height_ << std::endl;
                // for (size_t i = 0; i < input_pc->points.size(); i++)
                // {
                //     std::cout << cloud_2d.points_2d[i][0] << cloud_2d.points_2d[i][1] << std::endl;
                // }

                for (size_t i = 0; i < input_pc->points.size(); i++)
                {
                    // if it is not inside image, continue
                    // points_2d[i][0] is in the width direction
                    if (cloud_2d.points_2d[i][0] < 0 || cloud_2d.points_2d[i][0] > my_camera_.image_width_ ||
                        cloud_2d.points_2d[i][1] < 0 || cloud_2d.points_2d[i][1] > my_camera_.image_height_)
                    {
                        continue;
                    }

                    // if this point is not inside mask, continue
                    if (mask.ptr<unsigned char>(cloud_2d.points_2d[i][1])[cloud_2d.points_2d[i][0]] != 255)
                    {
                        continue;
                    }
                    current_cloud->points.push_back(input_pc->points[i]);
                }

                object_pc_list.push_back(current_cloud);
            }

            float is_valid_object(PointCloud::Ptr in_cloud)
            {
                Eigen::Vector4f xyz_centroid; //存放质心坐标 Vector4f單位為浮點數的4*1向量

                // Estimate the XYZ centroid
                pcl::compute3DCentroid(*in_cloud, xyz_centroid); //计算点云质心

                float distance = sqrt(pow(xyz_centroid[0], 2) + pow(xyz_centroid[1], 2));
                return distance;
            }

            void find_precise_cluster(PointCloud::Ptr object_cloud)
            {
                PointCloud::Ptr precise_clusters(new PointCloud);
                // std::cout << "before precise Cluster size:  " << object_cloud->points.size() << std::endl;

                for (size_t i = 0; i < object_cloud->points.size(); i++)
                {
                    // if it is not inside image, continue
                    // points_2d[i][0] is in the width direction
                    if (object_cloud->points[i].z < -0.25)
                    {
                        continue;
                    }
                    // std::cout << object_cloud->points[i] << std::endl;
                    precise_clusters->points.push_back(object_cloud->points[i]);
                }

                // *object_cloud+=*(precise_clusters);
                precise_clusters->swap(*object_cloud);
            }

            void find_largest_cluster(PointCloud::Ptr object_cloud,
                                            double cluster_tolerance = 0.1,
                                            int min_cluster_size = 50,
                                            int max_cluster_size = 307200)
            {
                pcl::search::KdTree<PointT>::Ptr tree(new pcl::search::KdTree<PointT>);
                tree->setInputCloud(object_cloud);

                // std::cout << "Each object" << std::endl;
                std::vector<pcl::PointIndices> object_indices;

                pcl::EuclideanClusterExtraction<PointT> euclid;
                euclid.setInputCloud(object_cloud); //"遮罩中物件框框內"的pcl點雲(x,y,0)
                euclid.setClusterTolerance(cluster_tolerance); //设置近邻搜索的半径 (0.1)
                euclid.setMinClusterSize(min_cluster_size); //设置最小聚类点数 (50)
                euclid.setMaxClusterSize(max_cluster_size); //设置最大聚类点数 (307200)
                euclid.setSearchMethod(tree); // KdTree
                euclid.extract(object_indices);//从点云中提取聚类，并将点云团保存在object_indices中
                                            //迭代访问点云索引object_indices，直至分割出所有聚类

                // clusters point cloud
                std::vector<PointCloud::Ptr> clusters;

                // std::cout << "object_indices.size():" << object_indices.size() << std::endl;

                for (size_t i = 0; i < object_indices.size(); ++i)
                {
                    PointCloud::Ptr new_cloud(new PointCloud());

                    // Reify indices into a point cloud of the object.
                    pcl::PointIndices::Ptr indices(new pcl::PointIndices);
                    *indices = object_indices[i];
                    pcl::ExtractIndices<PointT> extract;
                    extract.setInputCloud(object_cloud);
                    extract.setIndices(indices);
                    extract.filter(*new_cloud);

                    clusters.push_back(new_cloud);
                }

                // // visualization
                PointCloud::Ptr test_visual(new PointCloud);
                for (int i = 0; i < clusters.size(); i++)
                {   
                    // if(i == 1)        {   
                    //     std::cout << "clusters.size(): " << clusters.size() << std::endl;
                    //     // std::cout << "i: " << i << std::endl;
                    //     *test_visual += *(clusters[i]);
                    // }
                    *test_visual += *(clusters[i]);
                }
                // *test_visual += *(clusters[0]);
                sensor_msgs::PointCloud2 test_visual_msg;
                pcl::toROSMsg(*test_visual, test_visual_msg);
                test_visual_msg.header.stamp = ros::Time::now();
                test_visual_msg.header.frame_id = "velodyne";
                // std::cout << test_visual_msg << std::endl;
                test_pub_.publish(test_visual_msg);

                if (clusters.size() == 0)
                {
                    // std::cout << "No valid clusters." << std::endl;
                    PointCloud::Ptr new_cloud(new PointCloud());
                    new_cloud->swap(*object_cloud);
                    return;
                }

                // find minimum point cloud centroid distance to origin
                size_t min_distance = std::numeric_limits<size_t>::max();
                int min_cluster_id = 0;
                for (size_t i = 0; i < clusters.size(); ++i)
                {
                    size_t current_distance = is_valid_object(clusters[i]);
                    if (current_distance < min_distance)
                    {
                        min_distance = current_distance;
                        min_cluster_id = i;
                    }
                }

                size_t size = clusters[min_cluster_id]->points.size();
                clusters[min_cluster_id]->swap(*object_cloud);
                return;
            }

            void project2image_plane(PointCloud::Ptr in_cloud, PointCloudProjection &out_cloud_2d)
            {
                for (size_t i = 0; i < in_cloud->points.size(); i++)
                    {
                        Eigen::Matrix<double, 3, 1> p_l(in_cloud->points[i].x,
                                                        in_cloud->points[i].y,
                                                        in_cloud->points[i].z);                               
                        Eigen::Matrix<int, 2, 1> p_s = my_camera_.lidar2pixel(p_l); // point position in sensor coordinate

                        out_cloud_2d.points_2d.push_back(p_s);
                        out_cloud_2d.depth.push_back(in_cloud->points[i].x);
                    }

                return;
            }

            float find_object_highest_z(PointCloud::Ptr preserve_each_object, PointCloud::Ptr each_object)
            {
                float z = 0;
                for (size_t i = 0; i < each_object->points.size(); ++i)
                {
                    for (size_t j = 0; j < preserve_each_object->points.size(); ++j)
                    {
                        if ((each_object->points[i].x == preserve_each_object->points[j].x) &&
                            (each_object->points[i].y == preserve_each_object->points[j].y))
                            if (z < preserve_each_object->points[j].z)
                                z = preserve_each_object->points[j].z;
                    }
                }
                return z;
            }

            void cloud_2d(PointCloud::Ptr in_cloud)
            {
                for (size_t i = 0; i < in_cloud->points.size(); ++i)
                {
                    in_cloud->points[i].z = 0;
                }
            }

            PointCloud::Ptr find_2D_convex_hull(PointCloud::Ptr in_cloud)
            {
                PointCloud::Ptr convex_hull(new PointCloud);
                pcl::ConvexHull<pcl::PointXYZ> chull;
                chull.setInputCloud(in_cloud);
                chull.reconstruct(*convex_hull);

                // std::cout << "Convex hull has: " << convex_hull->size()
                //           << " data points." << std::endl;

                // convex_hull->swap(*in_cloud);
                // return;
                return convex_hull;
            }

            void polygon_marker(PointCloud::Ptr polygon,
                                      visualization_msgs::MarkerArray &marker_array,
                                      int class_id)
            {
                visualization_msgs::Marker line_strip;
                line_strip.header.frame_id = "map";
                line_strip.header.stamp = ros::Time::now();
                line_strip.ns = "current_frame_convex";
                line_strip.action = visualization_msgs::Marker::ADD;
                line_strip.pose.orientation.w = 1.0;

                line_strip.id = marker_id_;

                line_strip.type = visualization_msgs::Marker::LINE_STRIP;

                // LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
                line_strip.scale.x = 0.05;

                // Line strip is blue
                line_strip.color.b = 1.0;

                line_strip.color.a = 1.0;

                // Create the vertices for the points and lines
                for (uint32_t i = 0; i < polygon->points.size(); ++i)
                {
                    geometry_msgs::Point p;
                    p.x = polygon->points[i].x;
                    p.y = polygon->points[i].y;
                    p.z = 0;
                    line_strip.points.push_back(p);
                }

                geometry_msgs::Point p;
                p.x = polygon->points[0].x;
                p.y = polygon->points[0].y;
                p.z = 0;
                line_strip.points.push_back(p);

                line_strip.lifetime = ros::Duration(1.0 / loop_rate_);

                marker_array.markers.push_back(line_strip);

                visualization_msgs::Marker text;
                text.header = line_strip.header;
                text.action = visualization_msgs::Marker::ADD;
                text.lifetime = ros::Duration(1.0 / loop_rate_);

                text.ns = "class_text_per_frame";
                text.id = marker_id_;
                text.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
                text.scale.z = 0.2;

                text.pose.position = line_strip.points[0];
                text.pose.position.z += 0.3;
                text.color.r = text.color.g = text.color.b = text.color.a = 1.0;
                if (class_id == 1)
                { // 1 is the dinning table class
                    text.text = "Table";
                }
                else
                {
                    text.text = "Chair";
                }

                marker_array.markers.push_back(text);

                marker_id_++;
            }

            void pcl_image_overlap(const PointCloudProjection &projected_cloud,
                                         cv::Mat &image,
                                         cv::Mat colormap)
            {
                int w = image.size().width;
                int h = image.size().height;
                

                float min_d, max_d;
                min_d = max_d = projected_cloud.depth[0];
                for (int i = 1; i < projected_cloud.depth.size(); i++)
                {
                    float di = projected_cloud.depth[i];
                    max_d = di > max_d ? di : max_d;
                    min_d = di < min_d ? di : min_d;
                }
                float wid_d = max_d - min_d;


                for (int i = 0; i < projected_cloud.points_2d.size(); i++)
                {
                    if (projected_cloud.points_2d[i][0] <= 0 && projected_cloud.points_2d[i][0] >= w &&
                        projected_cloud.points_2d[i][1] <= 0 && projected_cloud.points_2d[i][1] >= h)
                    {
                        continue;
                    }
                    float distance = projected_cloud.depth[i];

                    int colorid = wid_d ? ((distance - min_d) * 255 / wid_d) : 128;
                    // std::cout << colorid << std::endl;
                    cv::Vec3b color = colormap.at<cv::Vec3b>(colorid); // colormap是一個(256*1) COLORMAP_JET 形式的彩色圖，再由color_id 去查到對應的顏色
                    // std::cout << color << std::endl;
                    
                    
                    int r = color[0];
                    int g = color[1];
                    int b = color[2];
                    cv::circle(image, cvPoint(projected_cloud.points_2d[i][0], projected_cloud.points_2d[i][1]),
                            2, CV_RGB(r, g, b), -1);
                }
            }

            void velodyne2map_frame(PointCloud::Ptr convex_hull_cloud)
            {
                // listen to the transform
                geometry_msgs::TransformStamped transformStamped;
                try
                {
                    transformStamped = tfBuffer_.lookupTransform("map",
                                                                "velodyne",
                                                                ros::Time(0));
                }
                catch (tf2::TransformException &ex)
                {
                    ROS_WARN("%s", ex.what());
                    return;
                }

                Eigen::Affine3d T_mb;
                tf::transformMsgToEigen(transformStamped.transform, T_mb);

                // pick out convex hull x and y
                // std::vector<cv::Point2f> poly;

                for (size_t i = 0; i < convex_hull_cloud->points.size(); ++i)
                {
                    Eigen::Vector3d p_b(convex_hull_cloud->points[i].x,
                                        convex_hull_cloud->points[i].y,
                                        convex_hull_cloud->points[i].z);
                    Eigen::Vector3d p_m = (T_mb.matrix() * p_b.colwise().homogeneous()).colwise().hnormalized();
                    convex_hull_cloud->points[i].x = p_m[0];
                    convex_hull_cloud->points[i].y = p_m[1];
                    convex_hull_cloud->points[i].z = p_m[2];
                    // std::cout << convex_hull_cloud->points[i] << std::endl;
                    
                    // poly.push_back({p_m[0], p_m[1]});
                }
            }

            void mask_callback(const sensor_msgs::PointCloud2ConstPtr& raw_pc,
                                        const rgbd_object_detection::MaskrcnnResult::ConstPtr& mask_result)
            {
                std::cout << "Inside callback" << std::endl;
                ros::Rate rate_(10);

                PointCloud::Ptr input_pc(new PointCloud);
                pcl::fromROSMsg(*raw_pc, *input_pc);

                // create an array of all the objects pointcloud
                std::vector<PointCloud::Ptr> objects_clouds;

                // read masks
                cv_bridge::CvImageConstPtr cv_ptr_mask;

                PointCloudProjection cloud_on_image;

                rgbd_object_detection::highest_z z_msg;

                project2image_plane(input_pc, cloud_on_image);

                // visualize overlap image
                cv_bridge::CvImagePtr cv_ptr_color;
                cv_ptr_color = cv_bridge::toCvCopy(mask_result->color_image);
                pcl_image_overlap(cloud_on_image, cv_ptr_color->image, colormap_);

                sensor_msgs::ImagePtr overlap_imageptr_msg;
                overlap_imageptr_msg = cv_ptr_color->toImageMsg();
                sensor_msgs::Image overlap_image_msg = *overlap_imageptr_msg;
                overlap_image_msg.header.stamp = ros::Time::now();
                overlap_image_pub_.publish(overlap_image_msg);

                for (int i = 0; i < mask_result->class_ids.size(); i++)
                {
                    try
                    {
                        // learned: this overload is convenient when you have a pointer to some other message type
                        // that contains a sensor_msgs/Image you want to convert.
                        cv_ptr_mask = cv_bridge::toCvShare(mask_result->masks[i], mask_result);
                    }
                    catch (cv_bridge::Exception &e)
                    {
                        ROS_ERROR("cv_bridge exception: %s", e.what());
                        return;
                    }

                    cv::Mat mask_image = cv_ptr_mask->image;

                    // std::cout << "Mask Rows: " << mask_image.rows << " Cols: " << mask_image.cols << std::endl;
                    // std::cout << "Row length: " << mask_image.step
                    //           << " Channels: " << mask_image.channels()
                    //           << " Depth: " << mask_image.depth()
                    //           << std::endl;

                    extract_by_mask(input_pc, mask_image, objects_clouds, cloud_on_image);
                }

                // // visualization
                PointCloud::Ptr objects_visual(new PointCloud);
                // std::cout << "objects_clouds.size()" << objects_clouds.size() << std::endl;
                for (int i = 0; i < objects_clouds.size(); i++)
                {   
                    *objects_visual += *(objects_clouds[i]);
                }
                sensor_msgs::PointCloud2 objects_visual_msg;
                pcl::toROSMsg(*objects_visual, objects_visual_msg);

                objects_visual_msg.header.stamp = ros::Time::now();
                objects_visual_msg.header.frame_id = "velodyne";
                // std::cout << objects_visual_msg << std::endl;
                objects_pub_.publish(objects_visual_msg);
                float highest_z;

                visualization_msgs::MarkerArray polygon_array;

                // for each object cloud, do downsampling and clustering
                int counter = -1;
                for (auto each_object : objects_clouds)
                {
                    // downsampling
                    // voxel_filter(each_object, 0.01);
                    counter++;

                    PointCloud::Ptr preserve_each_object(new PointCloud);
                    for (int i = 0; i < objects_clouds.size(); i++)
                    {
                        *preserve_each_object += *(objects_clouds[i]);
                    }

                    // test(each_object);
                    find_precise_cluster(each_object);
                    cloud_2d(each_object);

                    // std::cout << "before each_object->points.size()" << each_object->points.size() << std::endl;
                    find_largest_cluster(each_object);
                    highest_z = find_object_highest_z(preserve_each_object, each_object);
                    // std::cout << highest_z + 0.345 << std::endl;
                    z_msg.high_z.push_back(highest_z + 0.345);
                    // std::cout << "after each_object->points.size()" << each_object->points.size() << std::endl;
                    // if there is no clusters, ignore this object
                    if (each_object->points.size() <= 2)
                    {
                        continue;
                    }
                    // find_2D_convex_hull(each_object);
                    PointCloud::Ptr convex_hull_cloud = find_2D_convex_hull(each_object);
                    velodyne2map_frame(convex_hull_cloud);
                    polygon_marker(convex_hull_cloud, polygon_array, mask_result->class_ids[counter]);
                }

                // visualize again after clustering
                PointCloud::Ptr clustered_visual(new PointCloud);
                for (int i = 0; i < objects_clouds.size(); i++)
                {
                    *clustered_visual += *(objects_clouds[i]);
                }
                sensor_msgs::PointCloud2 clustered_visual_msg;
                pcl::toROSMsg(*clustered_visual, clustered_visual_msg);

                clustered_visual_msg.header.stamp = ros::Time::now();
                clustered_visual_msg.header.frame_id = "velodyne";
                clustered_pub_.publish(clustered_visual_msg);

                convex_hull_pub_.publish(polygon_array);

                object_highest_z_pub_.publish(z_msg);
                
            }
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "object_detector_v4");
    ros::NodeHandle nh;
    std::cout << "Outside callback~~" << std::endl;
    ObjectDetectorV4 ODV4(nh);
    std::cout << "Outside callback~~ end " << std::endl;
    ros::spin();
    return 0;
}