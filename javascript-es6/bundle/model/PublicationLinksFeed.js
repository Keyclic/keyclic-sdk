"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PublicationLinksFeedIriTemplate = _interopRequireDefault(
  require("./PublicationLinksFeedIriTemplate")
);

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
 * The PublicationLinksFeed model module.
 * @module model/PublicationLinksFeed
 */
var PublicationLinksFeed = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PublicationLinksFeed".
   * @alias module:model/PublicationLinksFeed
   * @class
  
   */
  function PublicationLinksFeed() {
    _classCallCheck(this, PublicationLinksFeed);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _PublicationLinksFeedIriTemplate.default;
  }
  /**
   * Constructs a "PublicationLinksFeed" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PublicationLinksFeed } object Optional instance to populate.
   * @return { module:model/PublicationLinksFeed } The populated "PublicationLinksFeed" instance.
   */

  _createClass(
    PublicationLinksFeed,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the feed associated to the given publication.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the feed associated to the given publication.
         * @param { String } href The URI of the feed associated to the given publication.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/PublicationLinksFeedIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/PublicationLinksFeedIriTemplate } iriTemplate
         */
      },
      {
        key: "setIriTemplate",
        value: function setIriTemplate(iriTemplate) {
          this.iriTemplate = iriTemplate;
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
            object = new PublicationLinksFeed();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]
  );

  return PublicationLinksFeed;
})();

exports.default = PublicationLinksFeed;
