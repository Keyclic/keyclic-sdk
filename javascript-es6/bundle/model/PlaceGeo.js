"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

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
  
   * @param elevation { Number }
  
   */
    function PlaceGeo(polygon, elevation) {
      _classCallCheck(this, PlaceGeo);

      this.polygon = polygon;
      this.elevation = elevation;
      this.polygonType = _PlaceGeoPolygon.default;
    }
    /**
     * Constructs a "PlaceGeo" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceGeo } object Optional instance to populate.
     * @return { module:model/PlaceGeo } The populated "PlaceGeo" instance.
     */

    _createClass(PlaceGeo, null, [
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

          if (data.hasOwnProperty("polygon")) {
            object.polygon = _ApiClient.default.convertToType(
              data["polygon"],
              object.polygonType
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
    ]);

    return PlaceGeo;
  })();

exports.default = PlaceGeo;
