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
 * The TrackingProgression model module.
 * @module model/TrackingProgression
 */
var TrackingProgression = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "TrackingProgression".
   * @alias module:model/TrackingProgression
   * @class
  
   */
  function TrackingProgression() {
    _classCallCheck(this, TrackingProgression);

    this.resolved = null;
    this.total = null;
  }
  /**
   * Constructs a "TrackingProgression" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/TrackingProgression } object Optional instance to populate.
   * @return { module:model/TrackingProgression } The populated "TrackingProgression" instance.
   */

  _createClass(
    TrackingProgression,
    [
      {
        key: "getResolved",

        /**
         * @return { Number }
         */
        value: function getResolved() {
          return this.resolved;
        }
        /**
         * @param { Number } resolved
         */
      },
      {
        key: "setResolved",
        value: function setResolved(resolved) {
          this.resolved = resolved;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getTotal",
        value: function getTotal() {
          return this.total;
        }
        /**
         * @param { Number } total
         */
      },
      {
        key: "setTotal",
        value: function setTotal(total) {
          this.total = total;
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
            object = new TrackingProgression();
          }

          if (data.hasOwnProperty("resolved")) {
            object.resolved = _ApiClient.default.convertToType(
              data["resolved"],
              "Number"
            );
          }

          if (data.hasOwnProperty("total")) {
            object.total = _ApiClient.default.convertToType(
              data["total"],
              "Number"
            );
          }

          return object;
        }
      }
    ]
  );

  return TrackingProgression;
})();

exports.default = TrackingProgression;
