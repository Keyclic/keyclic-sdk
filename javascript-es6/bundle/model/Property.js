"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PropertyConditions = _interopRequireDefault(
  require("./PropertyConditions")
);

var _PropertyItems = _interopRequireDefault(require("./PropertyItems"));

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
 * The Property model module.
 * @module model/Property
 */
var Property =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Property".
   * @alias module:model/Property
   * @class
  
   */
    function Property() {
      _classCallCheck(this, Property);

      this.type = null;
      this._enum = [];
      this.description = null;
      this.format = null;
      this.maxItems = null;
      this.minItems = null;
      this._default = null;
      this.propertyOrder = null;
      this.title = null;
      this.conditions = null;
      this.items = null;
      this.conditionsType = _PropertyConditions.default;
      this.itemsType = _PropertyItems.default;
    }
    /**
     * Constructs a "Property" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Property } object Optional instance to populate.
     * @return { module:model/Property } The populated "Property" instance.
     */

    _createClass(Property, null, [
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
            object = new Property();
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("enum")) {
            object._enum = _ApiClient.default.convertToType(
              data["enum"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("format")) {
            object.format = _ApiClient.default.convertToType(
              data["format"],
              "String"
            );
          }

          if (data.hasOwnProperty("maxItems")) {
            object.maxItems = _ApiClient.default.convertToType(
              data["maxItems"],
              "Number"
            );
          }

          if (data.hasOwnProperty("minItems")) {
            object.minItems = _ApiClient.default.convertToType(
              data["minItems"],
              "Number"
            );
          }

          if (data.hasOwnProperty("default")) {
            object._default = _ApiClient.default.convertToType(
              data["default"],
              "String"
            );
          }

          if (data.hasOwnProperty("propertyOrder")) {
            object.propertyOrder = _ApiClient.default.convertToType(
              data["propertyOrder"],
              "Number"
            );
          }

          if (data.hasOwnProperty("title")) {
            object.title = _ApiClient.default.convertToType(
              data["title"],
              "String"
            );
          }

          if (data.hasOwnProperty("conditions")) {
            object.conditions = _ApiClient.default.convertToType(
              data["conditions"],
              object.conditionsType
            );
          }

          if (data.hasOwnProperty("items")) {
            object.items = _ApiClient.default.convertToType(
              data["items"],
              object.itemsType
            );
          }

          return object;
        }
      }
    ]);

    return Property;
  })();

exports.default = Property;
