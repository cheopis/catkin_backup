# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rt_gene/MSG_SubjectImages.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import std_msgs.msg

class MSG_SubjectImages(genpy.Message):
  _md5sum = "b3ba5bab4b08adf79e584570df0f104c"
  _type = "rt_gene/MSG_SubjectImages"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string subject_id
sensor_msgs/Image face_img
sensor_msgs/Image right_eye_img
sensor_msgs/Image left_eye_img

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
"""
  __slots__ = ['subject_id','face_img','right_eye_img','left_eye_img']
  _slot_types = ['string','sensor_msgs/Image','sensor_msgs/Image','sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       subject_id,face_img,right_eye_img,left_eye_img

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MSG_SubjectImages, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.subject_id is None:
        self.subject_id = ''
      if self.face_img is None:
        self.face_img = sensor_msgs.msg.Image()
      if self.right_eye_img is None:
        self.right_eye_img = sensor_msgs.msg.Image()
      if self.left_eye_img is None:
        self.left_eye_img = sensor_msgs.msg.Image()
    else:
      self.subject_id = ''
      self.face_img = sensor_msgs.msg.Image()
      self.right_eye_img = sensor_msgs.msg.Image()
      self.left_eye_img = sensor_msgs.msg.Image()

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
      _x = self.subject_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.face_img.header.seq, _x.face_img.header.stamp.secs, _x.face_img.header.stamp.nsecs))
      _x = self.face_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.face_img.height, _x.face_img.width))
      _x = self.face_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.face_img.is_bigendian, _x.face_img.step))
      _x = self.face_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.right_eye_img.header.seq, _x.right_eye_img.header.stamp.secs, _x.right_eye_img.header.stamp.nsecs))
      _x = self.right_eye_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.right_eye_img.height, _x.right_eye_img.width))
      _x = self.right_eye_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.right_eye_img.is_bigendian, _x.right_eye_img.step))
      _x = self.right_eye_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.left_eye_img.header.seq, _x.left_eye_img.header.stamp.secs, _x.left_eye_img.header.stamp.nsecs))
      _x = self.left_eye_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.left_eye_img.height, _x.left_eye_img.width))
      _x = self.left_eye_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.left_eye_img.is_bigendian, _x.left_eye_img.step))
      _x = self.left_eye_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.face_img is None:
        self.face_img = sensor_msgs.msg.Image()
      if self.right_eye_img is None:
        self.right_eye_img = sensor_msgs.msg.Image()
      if self.left_eye_img is None:
        self.left_eye_img = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.subject_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.subject_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.face_img.header.seq, _x.face_img.header.stamp.secs, _x.face_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.face_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.face_img.height, _x.face_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.face_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.face_img.is_bigendian, _x.face_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.face_img.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.right_eye_img.header.seq, _x.right_eye_img.header.stamp.secs, _x.right_eye_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_eye_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.right_eye_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.right_eye_img.height, _x.right_eye_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_eye_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.right_eye_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.right_eye_img.is_bigendian, _x.right_eye_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.right_eye_img.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.left_eye_img.header.seq, _x.left_eye_img.header.stamp.secs, _x.left_eye_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_eye_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.left_eye_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.left_eye_img.height, _x.left_eye_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_eye_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.left_eye_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.left_eye_img.is_bigendian, _x.left_eye_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.left_eye_img.data = str[start:end]
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
      _x = self.subject_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.face_img.header.seq, _x.face_img.header.stamp.secs, _x.face_img.header.stamp.nsecs))
      _x = self.face_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.face_img.height, _x.face_img.width))
      _x = self.face_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.face_img.is_bigendian, _x.face_img.step))
      _x = self.face_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.right_eye_img.header.seq, _x.right_eye_img.header.stamp.secs, _x.right_eye_img.header.stamp.nsecs))
      _x = self.right_eye_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.right_eye_img.height, _x.right_eye_img.width))
      _x = self.right_eye_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.right_eye_img.is_bigendian, _x.right_eye_img.step))
      _x = self.right_eye_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.left_eye_img.header.seq, _x.left_eye_img.header.stamp.secs, _x.left_eye_img.header.stamp.nsecs))
      _x = self.left_eye_img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.left_eye_img.height, _x.left_eye_img.width))
      _x = self.left_eye_img.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BI().pack(_x.left_eye_img.is_bigendian, _x.left_eye_img.step))
      _x = self.left_eye_img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.face_img is None:
        self.face_img = sensor_msgs.msg.Image()
      if self.right_eye_img is None:
        self.right_eye_img = sensor_msgs.msg.Image()
      if self.left_eye_img is None:
        self.left_eye_img = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.subject_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.subject_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.face_img.header.seq, _x.face_img.header.stamp.secs, _x.face_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.face_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.face_img.height, _x.face_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.face_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.face_img.is_bigendian, _x.face_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.face_img.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.right_eye_img.header.seq, _x.right_eye_img.header.stamp.secs, _x.right_eye_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_eye_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.right_eye_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.right_eye_img.height, _x.right_eye_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_eye_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.right_eye_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.right_eye_img.is_bigendian, _x.right_eye_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.right_eye_img.data = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.left_eye_img.header.seq, _x.left_eye_img.header.stamp.secs, _x.left_eye_img.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_eye_img.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.left_eye_img.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.left_eye_img.height, _x.left_eye_img.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_eye_img.encoding = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.left_eye_img.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.left_eye_img.is_bigendian, _x.left_eye_img.step,) = _get_struct_BI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.left_eye_img.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
