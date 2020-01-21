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
 * The Polygon model module.
 * @module model/Polygon
 */
var Polygon =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Polygon".
   * @alias module:model/Polygon
   * @class
  
   */
    function Polygon() {
      _classCallCheck(this, Polygon);

      this.type = "FeatureCollection";
      this.features = [];
      this.featuresType = _Feature.default;
    }
    /**
     * Constructs a "Polygon" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Polygon } object Optional instance to populate.
     * @return { module:model/Polygon } The populated "Polygon" instance.
     */

    _createClass(
      Polygon,
      [
        {
          key: "getType",

          /**
           * @return { String }
           */
          value: function getType() {
            return this.type;
          }
          /**
           * @param { String } type
           */
        },
        {
          key: "setType",
          value: function setType(type) {
            this.type = type;
          }
          /**
           * @return { Array.<module:model/Feature> }
           */
        },
        {
          key: "getFeatures",
          value: function getFeatures() {
            return this.features;
          }
          /**
           * @param { Array.<module:model/Feature> } features
           */
        },
        {
          key: "setFeatures",
          value: function setFeatures(features) {
            this.features = features;
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
              object = new Polygon();
            }

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            if (data.hasOwnProperty("features")) {
              object.features = _ApiClient.default.convertToType(
                data["features"],
                [object.featuresType]
              );
            }

            return object;
          }
        }
      ]
    );

    return Polygon;
  })();

exports.default = Polygon;
