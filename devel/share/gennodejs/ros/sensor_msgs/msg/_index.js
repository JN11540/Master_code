
"use strict";

let Temperature = require('./Temperature.js');
let TimeReference = require('./TimeReference.js');
let CameraInfo = require('./CameraInfo.js');
let LaserEcho = require('./LaserEcho.js');
let NavSatStatus = require('./NavSatStatus.js');
let Range = require('./Range.js');
let PointField = require('./PointField.js');
let PointCloud = require('./PointCloud.js');
let NavSatFix = require('./NavSatFix.js');
let CompressedImage = require('./CompressedImage.js');
let Illuminance = require('./Illuminance.js');
let LaserScan = require('./LaserScan.js');
let BatteryState = require('./BatteryState.js');
let RelativeHumidity = require('./RelativeHumidity.js');
let JointState = require('./JointState.js');
let PointCloud2 = require('./PointCloud2.js');
let Image = require('./Image.js');
let RegionOfInterest = require('./RegionOfInterest.js');
let Joy = require('./Joy.js');
let MultiEchoLaserScan = require('./MultiEchoLaserScan.js');
let FluidPressure = require('./FluidPressure.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let MagneticField = require('./MagneticField.js');
let JoyFeedback = require('./JoyFeedback.js');
let MultiDOFJointState = require('./MultiDOFJointState.js');
let Imu = require('./Imu.js');
let JoyFeedbackArray = require('./JoyFeedbackArray.js');

module.exports = {
  Temperature: Temperature,
  TimeReference: TimeReference,
  CameraInfo: CameraInfo,
  LaserEcho: LaserEcho,
  NavSatStatus: NavSatStatus,
  Range: Range,
  PointField: PointField,
  PointCloud: PointCloud,
  NavSatFix: NavSatFix,
  CompressedImage: CompressedImage,
  Illuminance: Illuminance,
  LaserScan: LaserScan,
  BatteryState: BatteryState,
  RelativeHumidity: RelativeHumidity,
  JointState: JointState,
  PointCloud2: PointCloud2,
  Image: Image,
  RegionOfInterest: RegionOfInterest,
  Joy: Joy,
  MultiEchoLaserScan: MultiEchoLaserScan,
  FluidPressure: FluidPressure,
  ChannelFloat32: ChannelFloat32,
  MagneticField: MagneticField,
  JoyFeedback: JoyFeedback,
  MultiDOFJointState: MultiDOFJointState,
  Imu: Imu,
  JoyFeedbackArray: JoyFeedbackArray,
};
