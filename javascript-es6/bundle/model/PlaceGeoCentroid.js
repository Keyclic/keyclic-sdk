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
 * The PlaceGeoCentroid model module.
 * @module model/PlaceGeoCentroid
 */
var PlaceGeoCentroid =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PlaceGeoCentroid".
   * @alias module:model/PlaceGeoCentroid
   * @class
  
   * @param latitude { Number }
  
   * @param longitude { Number }
  
   */
    function PlaceGeoCentroid(latitude, longitude) {
      _classCallCheck(this, PlaceGeoCentroid);

      this.latitude = latitude;
      this.longitude = longitude;
    }
    /**
     * Constructs a "PlaceGeoCentroid" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceGeoCentroid } object Optional instance to populate.
     * @return { module:model/PlaceGeoCentroid } The populated "PlaceGeoCentroid" instance.
     */

    _createClass(
      PlaceGeoCentroid,
      [
        {
          key: "getLatitude",

          /**
           * @return { Number }
           */
          value: function getLatitude() {
            return this.latitude;
          }
          /**
           * @param { Number } latitude
           */
        },
        {
          key: "setLatitude",
          value: function setLatitude(latitude) {
            this.latitude = latitude;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getLongitude",
          value: function getLongitude() {
            return this.longitude;
          }
          /**
           * @param { Number } longitude
           */
        },
        {
          key: "setLongitude",
          value: function setLongitude(longitude) {
            this.longitude = longitude;
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
              object = new PlaceGeoCentroid();
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

            return object;
          }
        }
      ]
    );

    return PlaceGeoCentroid;
  })();

exports.default = PlaceGeoCentroid;
