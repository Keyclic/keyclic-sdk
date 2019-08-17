"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Feature = _interopRequireDefault(require("./Feature"));

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
 * The PlaceGeoPolygon model module.
 * @module model/PlaceGeoPolygon
 */
var PlaceGeoPolygon =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PlaceGeoPolygon".
   * @alias module:model/PlaceGeoPolygon
   * @class
  
   * @param type { String }
  
   */
    function PlaceGeoPolygon(type) {
      _classCallCheck(this, PlaceGeoPolygon);

      this.features = [];
      this.type = type;
      this.featuresType = _Feature.default;
    }
    /**
     * Constructs a "PlaceGeoPolygon" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceGeoPolygon } object Optional instance to populate.
     * @return { module:model/PlaceGeoPolygon } The populated "PlaceGeoPolygon" instance.
     */

    _createClass(PlaceGeoPolygon, null, [
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
            object = new PlaceGeoPolygon();
          }

          if (data.hasOwnProperty("features")) {
            object.features = _ApiClient.default.convertToType(
              data["features"],
              [object.featuresType]
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return PlaceGeoPolygon;
  })();

exports.default = PlaceGeoPolygon;
