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

/**
 * The CategoryData model module.
 * @module model/CategoryData
 */
var CategoryData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "CategoryData".
   * @alias module:model/CategoryData
   * @class
  
   * @param name { String }
  
   * @param color { String }
  
   * @param icon { String }
  
   * @param organization { String }
  
   */
    function CategoryData(name, color, icon, organization) {
      _classCallCheck(this, CategoryData);

      this.name = name;
      this.color = color;
      this.icon = icon;
      this.organization = organization;
      this.parent = null;
    }
    /**
     * Constructs a "CategoryData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/CategoryData } object Optional instance to populate.
     * @return { module:model/CategoryData } The populated "CategoryData" instance.
     */

    _createClass(
      CategoryData,
      [
        {
          key: "getName",

          /**
           * @return { String }
           */
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getColor",
          value: function getColor() {
            return this.color;
          }
          /**
           * @param { String } color
           */
        },
        {
          key: "setColor",
          value: function setColor(color) {
            this.color = color;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getIcon",
          value: function getIcon() {
            return this.icon;
          }
          /**
           * @param { String } icon
           */
        },
        {
          key: "setIcon",
          value: function setIcon(icon) {
            this.icon = icon;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getOrganization",
          value: function getOrganization() {
            return this.organization;
          }
          /**
           * @param { String } organization
           */
        },
        {
          key: "setOrganization",
          value: function setOrganization(organization) {
            this.organization = organization;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getParent",
          value: function getParent() {
            return this.parent;
          }
          /**
           * @param { String } parent
           */
        },
        {
          key: "setParent",
          value: function setParent(parent) {
            this.parent = parent;
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
              object = new CategoryData();
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("color")) {
              object.color = _ApiClient.default.convertToType(
                data["color"],
                "String"
              );
            }

            if (data.hasOwnProperty("icon")) {
              object.icon = _ApiClient.default.convertToType(
                data["icon"],
                "String"
              );
            }

            if (data.hasOwnProperty("organization")) {
              object.organization = _ApiClient.default.convertToType(
                data["organization"],
                "String"
              );
            }

            if (data.hasOwnProperty("parent")) {
              object.parent = _ApiClient.default.convertToType(
                data["parent"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return CategoryData;
  })();

exports.default = CategoryData;
