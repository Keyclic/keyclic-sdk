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
 * The ArticleLinksSelfIriTemplateMapping model module.
 * @module model/ArticleLinksSelfIriTemplateMapping
 */
var ArticleLinksSelfIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ArticleLinksSelfIriTemplateMapping".
   * @alias module:model/ArticleLinksSelfIriTemplateMapping
   * @class
  
   */
    function ArticleLinksSelfIriTemplateMapping() {
      _classCallCheck(this, ArticleLinksSelfIriTemplateMapping);

      this.article = null;
    }
    /**
     * Constructs a "ArticleLinksSelfIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ArticleLinksSelfIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/ArticleLinksSelfIriTemplateMapping } The populated "ArticleLinksSelfIriTemplateMapping" instance.
     */

    _createClass(
      ArticleLinksSelfIriTemplateMapping,
      [
        {
          key: "getArticle",

          /**
           * @return { String }
           */
          value: function getArticle() {
            return this.article;
          }
          /**
           * @param { String } article
           */
        },
        {
          key: "setArticle",
          value: function setArticle(article) {
            this.article = article;
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
              object = new ArticleLinksSelfIriTemplateMapping();
            }

            if (data.hasOwnProperty("article")) {
              object.article = _ApiClient.default.convertToType(
                data["article"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ArticleLinksSelfIriTemplateMapping;
  })();

exports.default = ArticleLinksSelfIriTemplateMapping;
