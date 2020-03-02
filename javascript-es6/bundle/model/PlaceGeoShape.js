"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Point = _interopRequireDefault(require("./Point"));

var _Polygon = _interopRequireDefault(require("./Polygon"));

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
 * The PlaceGeoShape model module.
 * @module model/PlaceGeoShape
 */
var PlaceGeoShape = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PlaceGeoShape".
     * @alias module:model/PlaceGeoShape
     * @class
    
     */
  function PlaceGeoShape() {
    _classCallCheck(this, PlaceGeoShape);

    this.centroid = null;
    this.elevation = null;
    this.polygon = null;
    this.centroidType = _Point.default;
    this.polygonType = _Polygon.default;
  }
  /**
   * Constructs a "PlaceGeoShape" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceGeoShape } object Optional instance to populate.
   * @return { module:model/PlaceGeoShape } The populated "PlaceGeoShape" instance.
   */

  _createClass(
    PlaceGeoShape,
    [
      {
        key: "getCentroid",

        /**
         * @return { module:model/Point }
         */
        value: function getCentroid() {
          return this.centroid;
        }
        /**
         * @param { module:model/Point } centroid
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
         * @return { module:model/Polygon }
         */
      },
      {
        key: "getPolygon",
        value: function getPolygon() {
          return this.polygon;
        }
        /**
         * @param { module:model/Polygon } polygon
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
            object = new PlaceGeoShape();
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

  return PlaceGeoShape;
})();

exports.default = PlaceGeoShape;
