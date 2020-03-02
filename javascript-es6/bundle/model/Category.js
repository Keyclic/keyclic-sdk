"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CategoryEmbedded = _interopRequireDefault(require("./CategoryEmbedded"));

var _CategoryLinks = _interopRequireDefault(require("./CategoryLinks"));

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
 * The Category model module.
 * @module model/Category
 */
var Category = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "Category".
     * @alias module:model/Category
     * @class
    
     * @param name { String }
    
     */
  function Category(name) {
    _classCallCheck(this, Category);

    this.embedded = null;
    this.links = null;
    this.color = null;
    this.createdAt = null;
    this.icon = null;
    this.id = null;
    this.identificationNumber = null;
    this.name = name;
    this.type = null;
    this.updatedAt = null;
    this.embeddedType = _CategoryEmbedded.default;
    this.linksType = _CategoryLinks.default;
  }
  /**
   * Constructs a "Category" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Category } object Optional instance to populate.
   * @return { module:model/Category } The populated "Category" instance.
   */

  _createClass(
    Category,
    [
      {
        key: "getEmbedded",

        /**
         * @return { module:model/CategoryEmbedded }
         */
        value: function getEmbedded() {
          return this.embedded;
        }
        /**
         * @param { module:model/CategoryEmbedded } embedded
         */
      },
      {
        key: "setEmbedded",
        value: function setEmbedded(embedded) {
          this.embedded = embedded;
        }
        /**
         * @return { module:model/CategoryLinks }
         */
      },
      {
        key: "getLinks",
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/CategoryLinks } links
         */
      },
      {
        key: "setLinks",
        value: function setLinks(links) {
          this.links = links;
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
         * @return { Date }
         */
      },
      {
        key: "getCreatedAt",
        value: function getCreatedAt() {
          return this.createdAt;
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
        key: "getId",
        value: function getId() {
          return this.id;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getIdentificationNumber",
        value: function getIdentificationNumber() {
          return this.identificationNumber;
        }
        /**
         * @param { String } identificationNumber
         */
      },
      {
        key: "setIdentificationNumber",
        value: function setIdentificationNumber(identificationNumber) {
          this.identificationNumber = identificationNumber;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getName",
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
        key: "getType",
        value: function getType() {
          return this.type;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getUpdatedAt",
        value: function getUpdatedAt() {
          return this.updatedAt;
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
            object = new Category();
          }

          if (data.hasOwnProperty("_embedded")) {
            object.embedded = _ApiClient.default.convertToType(
              data["_embedded"],
              object.embeddedType
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("color")) {
            object.color = _ApiClient.default.convertToType(
              data["color"],
              "String"
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("icon")) {
            object.icon = _ApiClient.default.convertToType(
              data["icon"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("identificationNumber")) {
            object.identificationNumber = _ApiClient.default.convertToType(
              data["identificationNumber"],
              "String"
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]
  );

  return Category;
})();

exports.default = Category;
