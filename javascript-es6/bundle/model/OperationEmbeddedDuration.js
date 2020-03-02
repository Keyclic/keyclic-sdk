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
 * The OperationEmbeddedDuration model module.
 * @module model/OperationEmbeddedDuration
 */
var OperationEmbeddedDuration = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "OperationEmbeddedDuration".
   * @alias module:model/OperationEmbeddedDuration
   * @class
  
   */
  function OperationEmbeddedDuration() {
    _classCallCheck(this, OperationEmbeddedDuration);

    this.seconds = null;
  }
  /**
   * Constructs a "OperationEmbeddedDuration" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationEmbeddedDuration } object Optional instance to populate.
   * @return { module:model/OperationEmbeddedDuration } The populated "OperationEmbeddedDuration" instance.
   */

  _createClass(
    OperationEmbeddedDuration,
    [
      {
        key: "getSeconds",

        /**
         * @return { Number }
         */
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
            object = new OperationEmbeddedDuration();
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

  return OperationEmbeddedDuration;
})();

exports.default = OperationEmbeddedDuration;
