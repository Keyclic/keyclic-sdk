"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ArticleLinksSection = _interopRequireDefault(
  require("./ArticleLinksSection")
);

var _ArticleLinksSelf = _interopRequireDefault(require("./ArticleLinksSelf"));

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
 * The ArticleLinks model module.
 * @module model/ArticleLinks
 */
var ArticleLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ArticleLinks".
   * @alias module:model/ArticleLinks
   * @class
  
   */
    function ArticleLinks() {
      _classCallCheck(this, ArticleLinks);

      this.section = null;
      this.self = null;
      this.sectionType = _ArticleLinksSection.default;
      this.selfType = _ArticleLinksSelf.default;
    }
    /**
     * Constructs a "ArticleLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ArticleLinks } object Optional instance to populate.
     * @return { module:model/ArticleLinks } The populated "ArticleLinks" instance.
     */

    _createClass(
      ArticleLinks,
      [
        {
          key: "getSection",

          /**
           * @return { module:model/ArticleLinksSection }
           */
          value: function getSection() {
            return this.section;
          }
          /**
           * @param { module:model/ArticleLinksSection } section
           */
        },
        {
          key: "setSection",
          value: function setSection(section) {
            this.section = section;
          }
          /**
           * @return { module:model/ArticleLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/ArticleLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
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
              object = new ArticleLinks();
            }

            if (data.hasOwnProperty("section")) {
              object.section = _ApiClient.default.convertToType(
                data["section"],
                object.sectionType
              );
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            return object;
          }
        }
      ]
    );

    return ArticleLinks;
  })();

exports.default = ArticleLinks;
