"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackDataGeoPoint = _interopRequireDefault(
  require("./FeedbackDataGeoPoint")
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
 * The FeedbackDataGeo model module.
 * @module model/FeedbackDataGeo
 */
var FeedbackDataGeo = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "FeedbackDataGeo".
     * @alias module:model/FeedbackDataGeo
     * @class
    
     */
  function FeedbackDataGeo() {
    _classCallCheck(this, FeedbackDataGeo);

    this.point = null;
    this.elevation = null;
    this.pointType = _FeedbackDataGeoPoint.default;
  }
  /**
   * Constructs a "FeedbackDataGeo" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackDataGeo } object Optional instance to populate.
   * @return { module:model/FeedbackDataGeo } The populated "FeedbackDataGeo" instance.
   */

  _createClass(
    FeedbackDataGeo,
    [
      {
        key: "getPoint",

        /**
         * @return { module:model/FeedbackDataGeoPoint }
         */
        value: function getPoint() {
          return this.point;
        }
        /**
         * @param { module:model/FeedbackDataGeoPoint } point
         */
      },
      {
        key: "setPoint",
        value: function setPoint(point) {
          this.point = point;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getElevation",
        value: function getElevation() {
          return this.elevation;
        }
        /**
         * @param { Number } elevation
         */
      },
      {
        key: "setElevation",
        value: function setElevation(elevation) {
          this.elevation = elevation;
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
            object = new FeedbackDataGeo();
          }

          if (data.hasOwnProperty("point")) {
            object.point = _ApiClient.default.convertToType(
              data["point"],
              object.pointType
            );
          }

          if (data.hasOwnProperty("elevation")) {
            object.elevation = _ApiClient.default.convertToType(
              data["elevation"],
              "Number"
            );
          }

          return object;
        }
      }
    ]
  );

  return FeedbackDataGeo;
})();

exports.default = FeedbackDataGeo;
