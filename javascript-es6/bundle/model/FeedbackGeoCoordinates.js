"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackGeoCoordinatesPoint = _interopRequireDefault(
  require("./FeedbackGeoCoordinatesPoint")
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
 * The FeedbackGeoCoordinates model module.
 * @module model/FeedbackGeoCoordinates
 */
var FeedbackGeoCoordinates =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackGeoCoordinates".
   * @alias module:model/FeedbackGeoCoordinates
   * @class
  
   * @param point { module:model/FeedbackGeoCoordinatesPoint }
  
   */
    function FeedbackGeoCoordinates(point) {
      _classCallCheck(this, FeedbackGeoCoordinates);

      this.elevation = null;
      this.point = point;
      this.pointType = _FeedbackGeoCoordinatesPoint.default;
    }
    /**
     * Constructs a "FeedbackGeoCoordinates" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackGeoCoordinates } object Optional instance to populate.
     * @return { module:model/FeedbackGeoCoordinates } The populated "FeedbackGeoCoordinates" instance.
     */

    _createClass(FeedbackGeoCoordinates, null, [
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
            object = new FeedbackGeoCoordinates();
          }

          if (data.hasOwnProperty("elevation")) {
            object.elevation = _ApiClient.default.convertToType(
              data["elevation"],
              "Number"
            );
          }

          if (data.hasOwnProperty("point")) {
            object.point = _ApiClient.default.convertToType(
              data["point"],
              object.pointType
            );
          }

          return object;
        }
      }
    ]);

    return FeedbackGeoCoordinates;
  })();

exports.default = FeedbackGeoCoordinates;
