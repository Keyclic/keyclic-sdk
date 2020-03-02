"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewLinksAuthorIriTemplate = _interopRequireDefault(
  require("./ReviewLinksAuthorIriTemplate")
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
 * The ReviewLinksAuthor model module.
 * @module model/ReviewLinksAuthor
 */
var ReviewLinksAuthor = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReviewLinksAuthor".
   * @alias module:model/ReviewLinksAuthor
   * @class
  
   */
  function ReviewLinksAuthor() {
    _classCallCheck(this, ReviewLinksAuthor);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _ReviewLinksAuthorIriTemplate.default;
  }
  /**
   * Constructs a "ReviewLinksAuthor" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewLinksAuthor } object Optional instance to populate.
   * @return { module:model/ReviewLinksAuthor } The populated "ReviewLinksAuthor" instance.
   */

  _createClass(
    ReviewLinksAuthor,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the author associated to the given review.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the author associated to the given review.
         * @param { String } href The URI of the author associated to the given review.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/ReviewLinksAuthorIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/ReviewLinksAuthorIriTemplate } iriTemplate
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
            object = new ReviewLinksAuthor();
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

  return ReviewLinksAuthor;
})();

exports.default = ReviewLinksAuthor;
