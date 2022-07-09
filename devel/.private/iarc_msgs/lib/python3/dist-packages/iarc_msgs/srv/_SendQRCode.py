# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iarc_msgs/SendQRCodeRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SendQRCodeRequest(genpy.Message):
  _md5sum = "704927ff9a6f6a65583495f8609d3df5"
  _type = "iarc_msgs/SendQRCodeRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 channel
int64[4] code
"""
  __slots__ = ['channel','code']
  _slot_types = ['int64','int64[4]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       channel,code

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SendQRCodeRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.channel is None:
        self.channel = 0
      if self.code is None:
        self.code = [0] * 4
    else:
      self.channel = 0
      self.code = [0] * 4

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
      _x = self.channel
      buff.write(_get_struct_q().pack(_x))
      buff.write(_get_struct_4q().pack(*self.code))
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
      end = 0
      start = end
      end += 8
      (self.channel,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 32
      self.code = _get_struct_4q().unpack(str[start:end])
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
      _x = self.channel
      buff.write(_get_struct_q().pack(_x))
      buff.write(self.code.tostring())
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
      end = 0
      start = end
      end += 8
      (self.channel,) = _get_struct_q().unpack(str[start:end])
      start = end
      end += 32
      self.code = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4q = None
def _get_struct_4q():
    global _struct_4q
    if _struct_4q is None:
        _struct_4q = struct.Struct("<4q")
    return _struct_4q
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iarc_msgs/SendQRCodeResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SendQRCodeResponse(genpy.Message):
  _md5sum = "f1f168a39479bedb24dba7a087426182"
  _type = "iarc_msgs/SendQRCodeResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool feedback

"""
  __slots__ = ['feedback']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SendQRCodeResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.feedback is None:
        self.feedback = False
    else:
      self.feedback = False

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
      _x = self.feedback
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
      end = 0
      start = end
      end += 1
      (self.feedback,) = _get_struct_B().unpack(str[start:end])
      self.feedback = bool(self.feedback)
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
      _x = self.feedback
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
      end = 0
      start = end
      end += 1
      (self.feedback,) = _get_struct_B().unpack(str[start:end])
      self.feedback = bool(self.feedback)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class SendQRCode(object):
  _type          = 'iarc_msgs/SendQRCode'
  _md5sum = '8193f777c6b316488f0375ed416381c5'
  _request_class  = SendQRCodeRequest
  _response_class = SendQRCodeResponse
