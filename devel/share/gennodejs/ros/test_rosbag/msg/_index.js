
"use strict";

let Simple = require('./Simple.js');
let Constants = require('./Constants.js');
let SubUnmigrated = require('./SubUnmigrated.js');
let SimpleMigrated = require('./SimpleMigrated.js');
let MigratedMixed = require('./MigratedMixed.js');
let MigratedAddSub = require('./MigratedAddSub.js');
let PartiallyMigrated = require('./PartiallyMigrated.js');
let Converged = require('./Converged.js');
let MigratedExplicit = require('./MigratedExplicit.js');
let Renamed5 = require('./Renamed5.js');
let Unmigrated = require('./Unmigrated.js');
let MigratedImplicit = require('./MigratedImplicit.js');

module.exports = {
  Simple: Simple,
  Constants: Constants,
  SubUnmigrated: SubUnmigrated,
  SimpleMigrated: SimpleMigrated,
  MigratedMixed: MigratedMixed,
  MigratedAddSub: MigratedAddSub,
  PartiallyMigrated: PartiallyMigrated,
  Converged: Converged,
  MigratedExplicit: MigratedExplicit,
  Renamed5: Renamed5,
  Unmigrated: Unmigrated,
  MigratedImplicit: MigratedImplicit,
};
