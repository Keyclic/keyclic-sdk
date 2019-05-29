"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeatureGeometry = _interopRequireDefault(require("./FeatureGeometry"));

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
 * The Feature model module.
 * @module model/Feature
 */
var Feature =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Feature".
   * @alias module:model/Feature
   * @class
  
   */
    function Feature() {
      _classCallCheck(this, Feature);

      this.type = "Feature";
      this.geometry = null;
      this.properties = [];
      this.geometryType = _FeatureGeometry.default;
    }
    /**
     * Constructs a "Feature" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Feature } object Optional instance to populate.
     * @return { module:model/Feature } The populated "Feature" instance.
     */

    _createClass(Feature, null, [
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
            object = new Feature();
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("geometry")) {
            object.geometry = _ApiClient.default.convertToType(
              data["geometry"],
              object.geometryType
            );
          }

          if (data.hasOwnProperty("properties")) {
            object.properties = _ApiClient.default.convertToType(
              data["properties"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]);

    return Feature;
  })();

exports.default = Feature;
