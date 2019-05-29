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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The FeatureGeometry model module.
 * @module model/FeatureGeometry
 */
var FeatureGeometry =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeatureGeometry".
   * @alias module:model/FeatureGeometry
   * @class
  
   */
    function FeatureGeometry() {
      _classCallCheck(this, FeatureGeometry);

      this.type = null;
      this.coordinates = [];
    }
    /**
     * Constructs a "FeatureGeometry" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeatureGeometry } object Optional instance to populate.
     * @return { module:model/FeatureGeometry } The populated "FeatureGeometry" instance.
     */

    _createClass(FeatureGeometry, null, [
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
            object = new FeatureGeometry();
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("coordinates")) {
            object.coordinates = _ApiClient.default.convertToType(
              data["coordinates"],
              "['Array']"
            );
          }

          return object;
        }
        /**
         * Allowed values for the "type" property.
         * @enum { String }
         */
      }
    ]);

    return FeatureGeometry;
  })();

exports.default = FeatureGeometry;

_defineProperty(FeatureGeometry, "TypeEnum", {
  /**
   * value: "Polygon"
   * @const
   * @readonly
   */
  Polygon: "Polygon",

  /**
   * value: "Point"
   * @const
   * @readonly
   */
  Point: "Point"
});
