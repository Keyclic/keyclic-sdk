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
 * The ReportEmbeddedDuration model module.
 * @module model/ReportEmbeddedDuration
 */
var ReportEmbeddedDuration =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportEmbeddedDuration".
   * @alias module:model/ReportEmbeddedDuration
   * @class
  
   */
    function ReportEmbeddedDuration() {
      _classCallCheck(this, ReportEmbeddedDuration);

      this.seconds = null;
    }
    /**
     * Constructs a "ReportEmbeddedDuration" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportEmbeddedDuration } object Optional instance to populate.
     * @return { module:model/ReportEmbeddedDuration } The populated "ReportEmbeddedDuration" instance.
     */

    _createClass(ReportEmbeddedDuration, null, [
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
            object = new ReportEmbeddedDuration();
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
    ]);

    return ReportEmbeddedDuration;
  })();

exports.default = ReportEmbeddedDuration;
