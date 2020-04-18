"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

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
 * The Duration model module.
 * @module model/Duration
 */
var Duration = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Duration".
   * @alias module:model/Duration
   * @class
  
   */
  function Duration() {
    _classCallCheck(this, Duration);

    this.hours = null;
    this.minutes = null;
    this.seconds = null;
  }
  /**
   * Constructs a "Duration" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Duration } object Optional instance to populate.
   * @return { module:model/Duration } The populated "Duration" instance.
   */

  _createClass(
    Duration,
    [
      {
        key: "getHours",

        /**
         * @return { Number }
         */
        value: function getHours() {
          return this.hours;
        }
        /**
         * @param { Number } hours
         */
      },
      {
        key: "setHours",
        value: function setHours(hours) {
          this.hours = hours;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getMinutes",
        value: function getMinutes() {
          return this.minutes;
        }
        /**
         * @param { Number } minutes
         */
      },
      {
        key: "setMinutes",
        value: function setMinutes(minutes) {
          this.minutes = minutes;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getSeconds",
        value: function getSeconds() {
          return this.seconds;
        }
        /**
         * @param { Number } seconds
         */
      },
      {
        key: "setSeconds",
        value: function setSeconds(seconds) {
          this.seconds = seconds;
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
            object = new Duration();
          }

          if (data.hasOwnProperty("hours")) {
            object.hours = _ApiClient.default.convertToType(
              data["hours"],
              "Number"
            );
          }

          if (data.hasOwnProperty("minutes")) {
            object.minutes = _ApiClient.default.convertToType(
              data["minutes"],
              "Number"
            );
          }

          if (data.hasOwnProperty("seconds")) {
            object.seconds = _ApiClient.default.convertToType(
              data["seconds"],
              "Number"
            );
          }

          return object;
        }
      }
    ]
  );

  return Duration;
})();

exports.default = Duration;
