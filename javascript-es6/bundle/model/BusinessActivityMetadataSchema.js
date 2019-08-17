"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Property = _interopRequireDefault(require("./Property"));

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
 * The BusinessActivityMetadataSchema model module.
 * @module model/BusinessActivityMetadataSchema
 */
var BusinessActivityMetadataSchema =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "BusinessActivityMetadataSchema".
   * @alias module:model/BusinessActivityMetadataSchema
   * @class
  
   */
    function BusinessActivityMetadataSchema() {
      _classCallCheck(this, BusinessActivityMetadataSchema);

      this.properties = [];
      this.required = [];
      this.propertiesType = _Property.default;
    }
    /**
     * Constructs a "BusinessActivityMetadataSchema" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/BusinessActivityMetadataSchema } object Optional instance to populate.
     * @return { module:model/BusinessActivityMetadataSchema } The populated "BusinessActivityMetadataSchema" instance.
     */

    _createClass(BusinessActivityMetadataSchema, null, [
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
            object = new BusinessActivityMetadataSchema();
          }

          if (data.hasOwnProperty("properties")) {
            object.properties = _ApiClient.default.convertToType(
              data["properties"],
              {
                String: object.propertiesType
              }
            );
          }

          if (data.hasOwnProperty("required")) {
            object.required = _ApiClient.default.convertToType(
              data["required"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]);

    return BusinessActivityMetadataSchema;
  })();

exports.default = BusinessActivityMetadataSchema;
