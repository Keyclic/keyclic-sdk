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
 * The BusinessActivitySchema model module.
 * @module model/BusinessActivitySchema
 */
var BusinessActivitySchema = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "BusinessActivitySchema".
   * @alias module:model/BusinessActivitySchema
   * @class
  
   */
  function BusinessActivitySchema() {
    _classCallCheck(this, BusinessActivitySchema);

    this.properties = [];
    this.required = [];
    this.propertiesType = _Property.default;
  }
  /**
   * Constructs a "BusinessActivitySchema" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/BusinessActivitySchema } object Optional instance to populate.
   * @return { module:model/BusinessActivitySchema } The populated "BusinessActivitySchema" instance.
   */

  _createClass(
    BusinessActivitySchema,
    [
      {
        key: "getProperties",

        /**
         * @return { Object.<String, module:model/Property> }
         */
        value: function getProperties() {
          return this.properties;
        }
        /**
         * @param { Object.<String, module:model/Property> } properties
         */
      },
      {
        key: "setProperties",
        value: function setProperties(properties) {
          this.properties = properties;
        }
        /**
         * @return { Array.<String> }
         */
      },
      {
        key: "getRequired",
        value: function getRequired() {
          return this.required;
        }
        /**
         * @param { Array.<String> } required
         */
      },
      {
        key: "setRequired",
        value: function setRequired(required) {
          this.required = required;
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
            object = new BusinessActivitySchema();
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
    ]
  );

  return BusinessActivitySchema;
})();

exports.default = BusinessActivitySchema;