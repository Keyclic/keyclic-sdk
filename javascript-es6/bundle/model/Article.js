"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ArticleLinks = _interopRequireDefault(require("./ArticleLinks"));

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
 * The Article model module.
 * @module model/Article
 */
var Article = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "Article".
     * @alias module:model/Article
     * @class
    
     * @param name { String }
    
     */
  function Article(name) {
    _classCallCheck(this, Article);

    this.links = null;
    this.createdAt = null;
    this.id = null;
    this.name = name;
    this.text = null;
    this.type = null;
    this.updatedAt = null;
    this.linksType = _ArticleLinks.default;
  }
  /**
   * Constructs a "Article" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Article } object Optional instance to populate.
   * @return { module:model/Article } The populated "Article" instance.
   */

  _createClass(
    Article,
    [
      {
        key: "getLinks",

        /**
         * @return { module:model/ArticleLinks }
         */
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/ArticleLinks } links
         */
      },
      {
        key: "setLinks",
        value: function setLinks(links) {
          this.links = links;
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
        key: "getId",
        value: function getId() {
          return this.id;
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
        key: "getText",
        value: function getText() {
          return this.text;
        }
        /**
         * @param { String } text
         */
      },
      {
        key: "setText",
        value: function setText(text) {
          this.text = text;
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
            object = new Article();
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("text")) {
            object.text = _ApiClient.default.convertToType(
              data["text"],
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

  return Article;
})();

exports.default = Article;
