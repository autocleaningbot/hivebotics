# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_hw_interface/ToolUpdate.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import robot_hw_interface.msg

class ToolUpdate(genpy.Message):
  _md5sum = "9d03c3706e095d719dab6e015f4f6e19"
  _type = "robot_hw_interface/ToolUpdate"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """WaterPump water_pump
ToiletBrush toilet_brush
================================================================================
MSG: robot_hw_interface/WaterPump
bool water_pump_status
int32 speed
================================================================================
MSG: robot_hw_interface/ToiletBrush
bool brush_lock_status
int32 motor_speed
"""
  __slots__ = ['water_pump','toilet_brush']
  _slot_types = ['robot_hw_interface/WaterPump','robot_hw_interface/ToiletBrush']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       water_pump,toilet_brush

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ToolUpdate, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.water_pump is None:
        self.water_pump = robot_hw_interface.msg.WaterPump()
      if self.toilet_brush is None:
        self.toilet_brush = robot_hw_interface.msg.ToiletBrush()
    else:
      self.water_pump = robot_hw_interface.msg.WaterPump()
      self.toilet_brush = robot_hw_interface.msg.ToiletBrush()

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
      buff.write(_get_struct_BiBi().pack(_x.water_pump.water_pump_status, _x.water_pump.speed, _x.toilet_brush.brush_lock_status, _x.toilet_brush.motor_speed))
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
      if self.water_pump is None:
        self.water_pump = robot_hw_interface.msg.WaterPump()
      if self.toilet_brush is None:
        self.toilet_brush = robot_hw_interface.msg.ToiletBrush()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.water_pump.water_pump_status, _x.water_pump.speed, _x.toilet_brush.brush_lock_status, _x.toilet_brush.motor_speed,) = _get_struct_BiBi().unpack(str[start:end])
      self.water_pump.water_pump_status = bool(self.water_pump.water_pump_status)
      self.toilet_brush.brush_lock_status = bool(self.toilet_brush.brush_lock_status)
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
      buff.write(_get_struct_BiBi().pack(_x.water_pump.water_pump_status, _x.water_pump.speed, _x.toilet_brush.brush_lock_status, _x.toilet_brush.motor_speed))
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
      if self.water_pump is None:
        self.water_pump = robot_hw_interface.msg.WaterPump()
      if self.toilet_brush is None:
        self.toilet_brush = robot_hw_interface.msg.ToiletBrush()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.water_pump.water_pump_status, _x.water_pump.speed, _x.toilet_brush.brush_lock_status, _x.toilet_brush.motor_speed,) = _get_struct_BiBi().unpack(str[start:end])
      self.water_pump.water_pump_status = bool(self.water_pump.water_pump_status)
      self.toilet_brush.brush_lock_status = bool(self.toilet_brush.brush_lock_status)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_BiBi = None
def _get_struct_BiBi():
    global _struct_BiBi
    if _struct_BiBi is None:
        _struct_BiBi = struct.Struct("<BiBi")
    return _struct_BiBi