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
 * The FeedbackDataGeoPoint model module.
 * @module model/FeedbackDataGeoPoint
 */
var FeedbackDataGeoPoint =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackDataGeoPoint".
   * @alias module:model/FeedbackDataGeoPoint
   * @class
  
   */
    function FeedbackDataGeoPoint() {
      _classCallCheck(this, FeedbackDataGeoPoint);

      this.latitude = null;
      this.longitude = null;
      this.srid = null;
    }
    /**
     * Constructs a "FeedbackDataGeoPoint" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackDataGeoPoint } object Optional instance to populate.
     * @return { module:model/FeedbackDataGeoPoint } The populated "FeedbackDataGeoPoint" instance.
     */

    _createClass(FeedbackDataGeoPoint, null, [
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
            object = new FeedbackDataGeoPoint();
          }

          if (data.hasOwnProperty("latitude")) {
            object.latitude = _ApiClient.default.convertToType(
              data["latitude"],
              "Number"
            );
          }

          if (data.hasOwnProperty("longitude")) {
            object.longitude = _ApiClient.default.convertToType(
              data["longitude"],
              "Number"
            );
          }

          if (data.hasOwnProperty("srid")) {
            object.srid = _ApiClient.default.convertToType(
              data["srid"],
              "Number"
            );
          }

          return object;
        }
      }
    ]);

    return FeedbackDataGeoPoint;
  })();

exports.default = FeedbackDataGeoPoint;
