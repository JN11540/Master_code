## *********************************************************
##
## File autogenerated for the stereo_image_proc package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'stereo_algorithm', 'type': 'int', 'default': 0, 'level': 0, 'description': 'stereo algorithm', 'min': 0, 'max': 1, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'StereoBM', 'type': 'int', 'value': 0, 'srcline': 11, 'srcfile': '/home/edward/catkin_ws/src/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'description': 'Block Matching', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'StereoSGBM', 'type': 'int', 'value': 1, 'srcline': 12, 'srcfile': '/home/edward/catkin_ws/src/image_pipeline/stereo_image_proc/cfg/Disparity.cfg', 'description': 'SemiGlobal Block Matching', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'stereo algorithm'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'prefilter_size', 'type': 'int', 'default': 9, 'level': 0, 'description': 'Normalization window size, pixels', 'min': 5, 'max': 255, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'prefilter_cap', 'type': 'int', 'default': 31, 'level': 0, 'description': 'Bound on normalized pixel values', 'min': 1, 'max': 63, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'correlation_window_size', 'type': 'int', 'default': 15, 'level': 0, 'description': 'SAD correlation window width, pixels', 'min': 5, 'max': 255, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'min_disparity', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Disparity to begin search at, pixels (may be negative)', 'min': -2048, 'max': 2048, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'disparity_range', 'type': 'int', 'default': 64, 'level': 0, 'description': 'Number of disparities to search, pixels', 'min': 32, 'max': 4096, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'uniqueness_ratio', 'type': 'double', 'default': 15.0, 'level': 0, 'description': 'Filter out if best match does not sufficiently exceed the next-best match', 'min': 0.0, 'max': 100.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'texture_threshold', 'type': 'int', 'default': 10, 'level': 0, 'description': 'Filter out if SAD window response does not exceed texture threshold', 'min': 0, 'max': 10000, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'speckle_size', 'type': 'int', 'default': 100, 'level': 0, 'description': 'Reject regions smaller than this size, pixels', 'min': 0, 'max': 1000, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'speckle_range', 'type': 'int', 'default': 4, 'level': 0, 'description': 'Max allowed difference between detected disparities', 'min': 0, 'max': 31, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'fullDP', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Run the full variant of the algorithm, only available in SGBM', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'P1', 'type': 'double', 'default': 200.0, 'level': 0, 'description': 'The first parameter controlling the disparity smoothness, only available in SGBM', 'min': 0.0, 'max': 4000.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'P2', 'type': 'double', 'default': 400.0, 'level': 0, 'description': 'The second parameter controlling the disparity smoothness., only available in SGBM', 'min': 0.0, 'max': 4000.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'disp12MaxDiff', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Maximum allowed difference (in integer pixel units) in the left-right disparity check, only available in SGBM', 'min': 0, 'max': 128, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Disparity_StereoBM = 0
Disparity_StereoSGBM = 1
