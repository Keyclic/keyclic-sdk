"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PropertyConditionList = _interopRequireDefault(
  require("./PropertyConditionList")
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

      this.conditions = null;
      this._default = null;
      this.description = null;
      this._enum = [];
      this.format = null;
      this.id = null;
      this.items = null;
      this.maxItems = null;
      this.minItems = null;
      this.propertyOrder = null;
      this.title = null;
      this.type = null;
      this.conditionsType = _PropertyConditionList.default;
      this.itemsType = _PropertyItems.default;
    }
    /**
     * Constructs a "Property" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Property } object Optional instance to populate.
     * @return { module:model/Property } The populated "Property" instance.
     */

    _createClass(
      Property,
      [
        {
          key: "getConditions",

          /**
           * @return { module:model/PropertyConditionList }
           */
          value: function getConditions() {
            return this.conditions;
          }
          /**
           * @param { module:model/PropertyConditionList } conditions
           */
        },
        {
          key: "setConditions",
          value: function setConditions(conditions) {
            this.conditions = conditions;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getDefault",
          value: function getDefault() {
            return this._default;
          }
          /**
           * @param { String } _default
           */
        },
        {
          key: "setDefault",
          value: function setDefault(_default) {
            this._default = _default;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getDescription",
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { Array.<String> }
           */
        },
        {
          key: "getEnum",
          value: function getEnum() {
            return this._enum;
          }
          /**
           * @param { Array.<String> } _enum
           */
        },
        {
          key: "setEnum",
          value: function setEnum(_enum) {
            this._enum = _enum;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getFormat",
          value: function getFormat() {
            return this.format;
          }
          /**
           * @param { String } format
           */
        },
        {
          key: "setFormat",
          value: function setFormat(format) {
            this.format = format;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getId",
          value: function getId() {
            return this.id;
          }
          /**
           * @return { module:model/PropertyItems }
           */
        },
        {
          key: "getItems",
          value: function getItems() {
            return this.items;
          }
          /**
           * @param { module:model/PropertyItems } items
           */
        },
        {
          key: "setItems",
          value: function setItems(items) {
            this.items = items;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getMaxItems",
          value: function getMaxItems() {
            return this.maxItems;
          }
          /**
           * @param { Number } maxItems
           */
        },
        {
          key: "setMaxItems",
          value: function setMaxItems(maxItems) {
            this.maxItems = maxItems;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getMinItems",
          value: function getMinItems() {
            return this.minItems;
          }
          /**
           * @param { Number } minItems
           */
        },
        {
          key: "setMinItems",
          value: function setMinItems(minItems) {
            this.minItems = minItems;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getPropertyOrder",
          value: function getPropertyOrder() {
            return this.propertyOrder;
          }
          /**
           * @param { Number } propertyOrder
           */
        },
        {
          key: "setPropertyOrder",
          value: function setPropertyOrder(propertyOrder) {
            this.propertyOrder = propertyOrder;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getTitle",
          value: function getTitle() {
            return this.title;
          }
          /**
           * @param { String } title
           */
        },
        {
          key: "setTitle",
          value: function setTitle(title) {
            this.title = title;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
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
              object = new Property();
            }

            if (data.hasOwnProperty("conditions")) {
              object.conditions = _ApiClient.default.convertToType(
                data["conditions"],
                object.conditionsType
              );
            }

            if (data.hasOwnProperty("default")) {
              object._default = _ApiClient.default.convertToType(
                data["default"],
                "String"
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("enum")) {
              object._enum = _ApiClient.default.convertToType(
                data["enum"],
                "['String']"
              );
            }

            if (data.hasOwnProperty("format")) {
              object.format = _ApiClient.default.convertToType(
                data["format"],
                "String"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("items")) {
              object.items = _ApiClient.default.convertToType(
                data["items"],
                object.itemsType
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

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Property;
  })();

exports.default = Property;
