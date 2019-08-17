"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewLinksAuthor = _interopRequireDefault(require("./ReviewLinksAuthor"));

var _ReviewLinksItemReviewed = _interopRequireDefault(
  require("./ReviewLinksItemReviewed")
);

var _ReviewLinksSelf = _interopRequireDefault(require("./ReviewLinksSelf"));

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
 * The ReviewLinks model module.
 * @module model/ReviewLinks
 */
var ReviewLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReviewLinks".
   * @alias module:model/ReviewLinks
   * @class
  
   */
    function ReviewLinks() {
      _classCallCheck(this, ReviewLinks);

      this.author = null;
      this.itemReviewed = null;
      this.self = null;
      this.authorType = _ReviewLinksAuthor.default;
      this.itemReviewedType = _ReviewLinksItemReviewed.default;
      this.selfType = _ReviewLinksSelf.default;
    }
    /**
     * Constructs a "ReviewLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReviewLinks } object Optional instance to populate.
     * @return { module:model/ReviewLinks } The populated "ReviewLinks" instance.
     */

    _createClass(ReviewLinks, null, [
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
            object = new ReviewLinks();
          }

          if (data.hasOwnProperty("author")) {
            object.author = _ApiClient.default.convertToType(
              data["author"],
              object.authorType
            );
          }

          if (data.hasOwnProperty("itemReviewed")) {
            object.itemReviewed = _ApiClient.default.convertToType(
              data["itemReviewed"],
              object.itemReviewedType
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
    ]);

    return ReviewLinks;
  })();

exports.default = ReviewLinks;
