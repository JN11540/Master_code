# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from visualization_msgs/Marker.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import std_msgs.msg

class Marker(genpy.Message):
  _md5sum = "4048c9de2a16f4ae8e0538085ebf1b97"
  _type = "visualization_msgs/Marker"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
"""
  # Pseudo-constants
  ARROW = 0
  CUBE = 1
  SPHERE = 2
  CYLINDER = 3
  LINE_STRIP = 4
  LINE_LIST = 5
  CUBE_LIST = 6
  SPHERE_LIST = 7
  POINTS = 8
  TEXT_VIEW_FACING = 9
  MESH_RESOURCE = 10
  TRIANGLE_LIST = 11
  ADD = 0
  MODIFY = 0
  DELETE = 2
  DELETEALL = 3

  __slots__ = ['header','ns','id','type','action','pose','scale','color','lifetime','frame_locked','points','colors','text','mesh_resource','mesh_use_embedded_materials']
  _slot_types = ['std_msgs/Header','string','int32','int32','int32','geometry_msgs/Pose','geometry_msgs/Vector3','std_msgs/ColorRGBA','duration','bool','geometry_msgs/Point[]','std_msgs/ColorRGBA[]','string','string','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ns,id,type,action,pose,scale,color,lifetime,frame_locked,points,colors,text,mesh_resource,mesh_use_embedded_materials

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Marker, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ns is None:
        self.ns = ''
      if self.id is None:
        self.id = 0
      if self.type is None:
        self.type = 0
      if self.action is None:
        self.action = 0
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.scale is None:
        self.scale = geometry_msgs.msg.Vector3()
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.lifetime is None:
        self.lifetime = genpy.Duration()
      if self.frame_locked is None:
        self.frame_locked = False
      if self.points is None:
        self.points = []
      if self.colors is None:
        self.colors = []
      if self.text is None:
        self.text = ''
      if self.mesh_resource is None:
        self.mesh_resource = ''
      if self.mesh_use_embedded_materials is None:
        self.mesh_use_embedded_materials = False
    else:
      self.header = std_msgs.msg.Header()
      self.ns = ''
      self.id = 0
      self.type = 0
      self.action = 0
      self.pose = geometry_msgs.msg.Pose()
      self.scale = geometry_msgs.msg.Vector3()
      self.color = std_msgs.msg.ColorRGBA()
      self.lifetime = genpy.Duration()
      self.frame_locked = False
      self.points = []
      self.colors = []
      self.text = ''
      self.mesh_resource = ''
      self.mesh_use_embedded_materials = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.ns
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i10d4f2iB().pack(_x.id, _x.type, _x.action, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.scale.x, _x.scale.y, _x.scale.z, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.lifetime.secs, _x.lifetime.nsecs, _x.frame_locked))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.colors)
      buff.write(_struct_I.pack(length))
      for val1 in self.colors:
        _x = val1
        buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
      _x = self.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mesh_resource
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mesh_use_embedded_materials
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.scale is None:
        self.scale = geometry_msgs.msg.Vector3()
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.lifetime is None:
        self.lifetime = genpy.Duration()
      if self.points is None:
        self.points = None
      if self.colors is None:
        self.colors = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ns = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ns = str[start:end]
      _x = self
      start = end
      end += 117
      (_x.id, _x.type, _x.action, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.scale.x, _x.scale.y, _x.scale.z, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.lifetime.secs, _x.lifetime.nsecs, _x.frame_locked,) = _get_struct_3i10d4f2iB().unpack(str[start:end])
      self.frame_locked = bool(self.frame_locked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.colors = []
      for i in range(0, length):
        val1 = std_msgs.msg.ColorRGBA()
        _x = val1
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
        self.colors.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mesh_resource = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mesh_resource = str[start:end]
      start = end
      end += 1
      (self.mesh_use_embedded_materials,) = _get_struct_B().unpack(str[start:end])
      self.mesh_use_embedded_materials = bool(self.mesh_use_embedded_materials)
      self.lifetime.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.ns
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i10d4f2iB().pack(_x.id, _x.type, _x.action, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.scale.x, _x.scale.y, _x.scale.z, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.lifetime.secs, _x.lifetime.nsecs, _x.frame_locked))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.colors)
      buff.write(_struct_I.pack(length))
      for val1 in self.colors:
        _x = val1
        buff.write(_get_struct_4f().pack(_x.r, _x.g, _x.b, _x.a))
      _x = self.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mesh_resource
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mesh_use_embedded_materials
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.scale is None:
        self.scale = geometry_msgs.msg.Vector3()
      if self.color is None:
        self.color = std_msgs.msg.ColorRGBA()
      if self.lifetime is None:
        self.lifetime = genpy.Duration()
      if self.points is None:
        self.points = None
      if self.colors is None:
        self.colors = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ns = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ns = str[start:end]
      _x = self
      start = end
      end += 117
      (_x.id, _x.type, _x.action, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.scale.x, _x.scale.y, _x.scale.z, _x.color.r, _x.color.g, _x.color.b, _x.color.a, _x.lifetime.secs, _x.lifetime.nsecs, _x.frame_locked,) = _get_struct_3i10d4f2iB().unpack(str[start:end])
      self.frame_locked = bool(self.frame_locked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.colors = []
      for i in range(0, length):
        val1 = std_msgs.msg.ColorRGBA()
        _x = val1
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _get_struct_4f().unpack(str[start:end])
        self.colors.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mesh_resource = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mesh_resource = str[start:end]
      start = end
      end += 1
      (self.mesh_use_embedded_materials,) = _get_struct_B().unpack(str[start:end])
      self.mesh_use_embedded_materials = bool(self.mesh_use_embedded_materials)
      self.lifetime.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3i10d4f2iB = None
def _get_struct_3i10d4f2iB():
    global _struct_3i10d4f2iB
    if _struct_3i10d4f2iB is None:
        _struct_3i10d4f2iB = struct.Struct("<3i10d4f2iB")
    return _struct_3i10d4f2iB
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
