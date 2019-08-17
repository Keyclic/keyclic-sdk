"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportEmbeddedDuration = _interopRequireDefault(
  require("./ReportEmbeddedDuration")
);

var _ReportEmbeddedTargetGroups = _interopRequireDefault(
  require("./ReportEmbeddedTargetGroups")
);

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
}

function _classCallCheck(instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
}

function _defineProperties(target, props) {
  for (var i = 0; i < props.length; i++) {
    var descriptor = props[i];
    descriptor.enumerable = descriptor.enumerable || false;
    descriptor.configurable = true;
    if ("value" in descriptor) descriptor.writable = true;
    Object.defineProperty(target, descriptor.key, descriptor);
  }
}

function _createClass(Constructor, protoProps, staticProps) {
  if (protoProps) _defineProperties(Constructor.prototype, protoProps);
  if (staticProps) _defineProperties(Constructor, staticProps);
  return Constructor;
}

/**
 * The ReportEmbedded model module.
 * @module model/ReportEmbedded
 */
var ReportEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportEmbedded".
   * @alias module:model/ReportEmbedded
   * @class
  
   */
    function ReportEmbedded() {
      _classCallCheck(this, ReportEmbedded);

      this.duration = null;
      this.stateTransitions = [];
      this.targetGroups = [];
      this.tracking = null;
      this.durationType = _ReportEmbeddedDuration.default;
      this.targetGroupsType = _ReportEmbeddedTargetGroups.default;
    }
    /**
     * Constructs a "ReportEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportEmbedded } object Optional instance to populate.
     * @return { module:model/ReportEmbedded } The populated "ReportEmbedded" instance.
     */

    _createClass(ReportEmbedded, null, [
      {
        key: "constructFromData",
        value: function constructFromData(data) {
          var object =
            arguments.length > 1 && arguments[1] !== undefined
              ? arguments[1]
              : null;

          if (data === null) {
            throw new Error("No data to build object");
          }

          if (object === null) {
            object = new ReportEmbedded();
          }

          if (data.hasOwnProperty("duration")) {
            object.duration = _ApiClient.default.convertToType(
              data["duration"],
              object.durationType
            );
          }

          if (data.hasOwnProperty("stateTransitions")) {
            object.stateTransitions = _ApiClient.default.convertToType(
              data["stateTransitions"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("targetGroups")) {
            object.targetGroups = _ApiClient.default.convertToType(
              data["targetGroups"],
              [object.targetGroupsType]
            );
          }

          if (data.hasOwnProperty("tracking")) {
            object.tracking = _ApiClient.default.convertToType(
              data["tracking"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return ReportEmbedded;
  })();

exports.default = ReportEmbedded;
