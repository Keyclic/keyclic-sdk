"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PlaceGeoCentroid = _interopRequireDefault(require("./PlaceGeoCentroid"));

var _PlaceGeoPolygon = _interopRequireDefault(require("./PlaceGeoPolygon"));

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
 * The PlaceGeo model module.
 * @module model/PlaceGeo
 */
var PlaceGeo =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PlaceGeo".
   * @alias module:model/PlaceGeo
   * @class
  
   * @param polygon { module:model/PlaceGeoPolygon }
  
   */
    function PlaceGeo(polygon) {
      _classCallCheck(this, PlaceGeo);

      this.centroid = null;
      this.elevation = null;
      this.polygon = polygon;
      this.centroidType = _PlaceGeoCentroid.default;
      this.polygonType = _PlaceGeoPolygon.default;
    }
    /**
     * Constructs a "PlaceGeo" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceGeo } object Optional instance to populate.
     * @return { module:model/PlaceGeo } The populated "PlaceGeo" instance.
     */

    _createClass(
      PlaceGeo,
      [
        {
          key: "getCentroid",

          /**
           * @return { module:model/PlaceGeoCentroid }
           */
          value: function getCentroid() {
            return this.centroid;
          }
          /**
           * @param { module:model/PlaceGeoCentroid } centroid
           */
        },
        {
          key: "setCentroid",
          value: function setCentroid(centroid) {
            this.centroid = centroid;
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
          /**
           * @return { module:model/PlaceGeoPolygon }
           */
        },
        {
          key: "getPolygon",
          value: function getPolygon() {
            return this.polygon;
          }
          /**
           * @param { module:model/PlaceGeoPolygon } polygon
           */
        },
        {
          key: "setPolygon",
          value: function setPolygon(polygon) {
            this.polygon = polygon;
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
              object = new PlaceGeo();
            }

            if (data.hasOwnProperty("centroid")) {
              object.centroid = _ApiClient.default.convertToType(
                data["centroid"],
                object.centroidType
              );
            }

            if (data.hasOwnProperty("elevation")) {
              object.elevation = _ApiClient.default.convertToType(
                data["elevation"],
                "Number"
              );
            }

            if (data.hasOwnProperty("polygon")) {
              object.polygon = _ApiClient.default.convertToType(
                data["polygon"],
                object.polygonType
              );
            }

            return object;
          }
        }
      ]
    );

    return PlaceGeo;
  })();

exports.default = PlaceGeo;
