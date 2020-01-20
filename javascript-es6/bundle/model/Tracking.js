"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Checkpoint = _interopRequireDefault(require("./Checkpoint"));

var _Progression = _interopRequireDefault(require("./Progression"));

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
 * The Tracking model module.
 * @module model/Tracking
 */
var Tracking =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Tracking".
   * @alias module:model/Tracking
   * @class
  
   */
    function Tracking() {
      _classCallCheck(this, Tracking);

      this.checkpoints = [];
      this.progression = null;
      this.state = null;
      this.time = null;
      this.checkpointsType = _Checkpoint.default;
      this.progressionType = _Progression.default;
    }
    /**
     * Constructs a "Tracking" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Tracking } object Optional instance to populate.
     * @return { module:model/Tracking } The populated "Tracking" instance.
     */

    _createClass(
      Tracking,
      [
        {
          key: "getCheckpoints",

          /**
           * @return { Array.<module:model/Checkpoint> }
           */
          value: function getCheckpoints() {
            return this.checkpoints;
          }
          /**
           * @param { Array.<module:model/Checkpoint> } checkpoints
           */
        },
        {
          key: "setCheckpoints",
          value: function setCheckpoints(checkpoints) {
            this.checkpoints = checkpoints;
          }
          /**
           * @return { module:model/Progression }
           */
        },
        {
          key: "getProgression",
          value: function getProgression() {
            return this.progression;
          }
          /**
           * @param { module:model/Progression } progression
           */
        },
        {
          key: "setProgression",
          value: function setProgression(progression) {
            this.progression = progression;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getState",
          value: function getState() {
            return this.state;
          }
          /**
           * @param { String } state
           */
        },
        {
          key: "setState",
          value: function setState(state) {
            this.state = state;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getTime",
          value: function getTime() {
            return this.time;
          }
          /**
           * @param { Number } time
           */
        },
        {
          key: "setTime",
          value: function setTime(time) {
            this.time = time;
          }
        }
      ],
      [
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
              object = new Tracking();
            }

            if (data.hasOwnProperty("checkpoints")) {
              object.checkpoints = _ApiClient.default.convertToType(
                data["checkpoints"],
                [object.checkpointsType]
              );
            }

            if (data.hasOwnProperty("progression")) {
              object.progression = _ApiClient.default.convertToType(
                data["progression"],
                object.progressionType
              );
            }

            if (data.hasOwnProperty("state")) {
              object.state = _ApiClient.default.convertToType(
                data["state"],
                "String"
              );
            }

            if (data.hasOwnProperty("time")) {
              object.time = _ApiClient.default.convertToType(
                data["time"],
                "Number"
              );
            }

            return object;
          }
        }
      ]
    );

    return Tracking;
  })();

exports.default = Tracking;
