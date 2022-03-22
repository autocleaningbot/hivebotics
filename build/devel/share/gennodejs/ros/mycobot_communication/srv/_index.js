
"use strict";

let SetAngles = require('./SetAngles.js')
let GetAngles = require('./GetAngles.js')
let SetCoords = require('./SetCoords.js')
let GetCoords = require('./GetCoords.js')
let GripperStatus = require('./GripperStatus.js')
let PumpStatus = require('./PumpStatus.js')

module.exports = {
  SetAngles: SetAngles,
  GetAngles: GetAngles,
  SetCoords: SetCoords,
  GetCoords: GetCoords,
  GripperStatus: GripperStatus,
  PumpStatus: PumpStatus,
};
