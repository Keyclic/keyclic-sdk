"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackReviewRequestLinksItemToReview = _interopRequireDefault(
  require("./FeedbackReviewRequestLinksItemToReview")
);

var _FeedbackReviewRequestLinksOrganization = _interopRequireDefault(
  require("./FeedbackReviewRequestLinksOrganization")
);

var _FeedbackReviewRequestLinksReview = _interopRequireDefault(
  require("./FeedbackReviewRequestLinksReview")
);

var _FeedbackReviewRequestLinksReviewer = _interopRequireDefault(
  require("./FeedbackReviewRequestLinksReviewer")
);

var _FeedbackReviewRequestLinksSelf = _interopRequireDefault(
  require("./FeedbackReviewRequestLinksSelf")
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
 * The FeedbackReviewRequestLinks model module.
 * @module model/FeedbackReviewRequestLinks
 */
var FeedbackReviewRequestLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackReviewRequestLinks".
   * @alias module:model/FeedbackReviewRequestLinks
   * @class
  
   */
    function FeedbackReviewRequestLinks() {
      _classCallCheck(this, FeedbackReviewRequestLinks);

      this.itemToReview = null;
      this.organization = null;
      this.review = null;
      this.reviewer = null;
      this.self = null;
      this.itemToReviewType = _FeedbackReviewRequestLinksItemToReview.default;
      this.organizationType = _FeedbackReviewRequestLinksOrganization.default;
      this.reviewType = _FeedbackReviewRequestLinksReview.default;
      this.reviewerType = _FeedbackReviewRequestLinksReviewer.default;
      this.selfType = _FeedbackReviewRequestLinksSelf.default;
    }
    /**
     * Constructs a "FeedbackReviewRequestLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackReviewRequestLinks } object Optional instance to populate.
     * @return { module:model/FeedbackReviewRequestLinks } The populated "FeedbackReviewRequestLinks" instance.
     */

    _createClass(FeedbackReviewRequestLinks, null, [
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
            object = new FeedbackReviewRequestLinks();
          }

          if (data.hasOwnProperty("itemToReview")) {
            object.itemToReview = _ApiClient.default.convertToType(
              data["itemToReview"],
              object.itemToReviewType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("review")) {
            object.review = _ApiClient.default.convertToType(
              data["review"],
              object.reviewType
            );
          }

          if (data.hasOwnProperty("reviewer")) {
            object.reviewer = _ApiClient.default.convertToType(
              data["reviewer"],
              object.reviewerType
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

    return FeedbackReviewRequestLinks;
  })();

exports.default = FeedbackReviewRequestLinks;
