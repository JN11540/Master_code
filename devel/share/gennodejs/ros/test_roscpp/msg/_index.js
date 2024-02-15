
"use strict";

let TestStringInt = require('./TestStringInt.js');
let TestWithHeader = require('./TestWithHeader.js');
let TestEmpty = require('./TestEmpty.js');
let TestArray = require('./TestArray.js');
let WithMemberNamedHeaderThatIsNotAHeader = require('./WithMemberNamedHeaderThatIsNotAHeader.js');
let FixedLength = require('./FixedLength.js');
let WithTime = require('./WithTime.js');
let FixedLengthArrayOfExternal = require('./FixedLengthArrayOfExternal.js');
let Constants = require('./Constants.js');
let FixedLengthStringArray = require('./FixedLengthStringArray.js');
let ArrayOfVariableLength = require('./ArrayOfVariableLength.js');
let VariableLengthStringArray = require('./VariableLengthStringArray.js');
let WithHeader = require('./WithHeader.js');
let EmbeddedFixedLength = require('./EmbeddedFixedLength.js');
let EmbeddedExternal = require('./EmbeddedExternal.js');
let VariableLength = require('./VariableLength.js');
let HeaderNotFirstMember = require('./HeaderNotFirstMember.js');
let EmbeddedVariableLength = require('./EmbeddedVariableLength.js');
let CustomHeader = require('./CustomHeader.js');
let VariableLengthArrayOfExternal = require('./VariableLengthArrayOfExternal.js');
let WithDuration = require('./WithDuration.js');
let ArrayOfFixedLength = require('./ArrayOfFixedLength.js');
let LatencyMessage = require('./LatencyMessage.js');
let ThroughputMessage = require('./ThroughputMessage.js');
let PointCloud = require('./PointCloud.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let Point32 = require('./Point32.js');

module.exports = {
  TestStringInt: TestStringInt,
  TestWithHeader: TestWithHeader,
  TestEmpty: TestEmpty,
  TestArray: TestArray,
  WithMemberNamedHeaderThatIsNotAHeader: WithMemberNamedHeaderThatIsNotAHeader,
  FixedLength: FixedLength,
  WithTime: WithTime,
  FixedLengthArrayOfExternal: FixedLengthArrayOfExternal,
  Constants: Constants,
  FixedLengthStringArray: FixedLengthStringArray,
  ArrayOfVariableLength: ArrayOfVariableLength,
  VariableLengthStringArray: VariableLengthStringArray,
  WithHeader: WithHeader,
  EmbeddedFixedLength: EmbeddedFixedLength,
  EmbeddedExternal: EmbeddedExternal,
  VariableLength: VariableLength,
  HeaderNotFirstMember: HeaderNotFirstMember,
  EmbeddedVariableLength: EmbeddedVariableLength,
  CustomHeader: CustomHeader,
  VariableLengthArrayOfExternal: VariableLengthArrayOfExternal,
  WithDuration: WithDuration,
  ArrayOfFixedLength: ArrayOfFixedLength,
  LatencyMessage: LatencyMessage,
  ThroughputMessage: ThroughputMessage,
  PointCloud: PointCloud,
  ChannelFloat32: ChannelFloat32,
  Point32: Point32,
};
