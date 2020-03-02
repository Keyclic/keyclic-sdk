"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewRequestLinksItemToReview = _interopRequireDefault(
  require("./ReviewRequestLinksItemToReview")
);

var _ReviewRequestLinksOrganization = _interopRequireDefault(
  require("./ReviewRequestLinksOrganization")
);

var _ReviewRequestLinksReview = _interopRequireDefault(
  require("./ReviewRequestLinksReview")
);

var _ReviewRequestLinksReviewer = _interopRequireDefault(
  require("./ReviewRequestLinksReviewer")
);

var _ReviewRequestLinksSelf = _interopRequireDefault(
  require("./ReviewRequestLinksSelf")
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
 * The ReviewRequestLinks model module.
 * @module model/ReviewRequestLinks
 */
var ReviewRequestLinks = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReviewRequestLinks".
   * @alias module:model/ReviewRequestLinks
   * @class
  
   */
  function ReviewRequestLinks() {
    _classCallCheck(this, ReviewRequestLinks);

    this.itemToReview = null;
    this.organization = null;
    this.review = null;
    this.reviewer = null;
    this.self = null;
    this.itemToReviewType = _ReviewRequestLinksItemToReview.default;
    this.organizationType = _ReviewRequestLinksOrganization.default;
    this.reviewType = _ReviewRequestLinksReview.default;
    this.reviewerType = _ReviewRequestLinksReviewer.default;
    this.selfType = _ReviewRequestLinksSelf.default;
  }
  /**
   * Constructs a "ReviewRequestLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewRequestLinks } object Optional instance to populate.
   * @return { module:model/ReviewRequestLinks } The populated "ReviewRequestLinks" instance.
   */

  _createClass(
    ReviewRequestLinks,
    [
      {
        key: "getItemToReview",

        /**
         * @return { module:model/ReviewRequestLinksItemToReview }
         */
        value: function getItemToReview() {
          return this.itemToReview;
        }
        /**
         * @param { module:model/ReviewRequestLinksItemToReview } itemToReview
         */
      },
      {
        key: "setItemToReview",
        value: function setItemToReview(itemToReview) {
          this.itemToReview = itemToReview;
        }
        /**
         * @return { module:model/ReviewRequestLinksOrganization }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { module:model/ReviewRequestLinksOrganization } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
        }
        /**
         * @return { module:model/ReviewRequestLinksReview }
         */
      },
      {
        key: "getReview",
        value: function getReview() {
          return this.review;
        }
        /**
         * @param { module:model/ReviewRequestLinksReview } review
         */
      },
      {
        key: "setReview",
        value: function setReview(review) {
          this.review = review;
        }
        /**
         * @return { module:model/ReviewRequestLinksReviewer }
         */
      },
      {
        key: "getReviewer",
        value: function getReviewer() {
          return this.reviewer;
        }
        /**
         * @param { module:model/ReviewRequestLinksReviewer } reviewer
         */
      },
      {
        key: "setReviewer",
        value: function setReviewer(reviewer) {
          this.reviewer = reviewer;
        }
        /**
         * @return { module:model/ReviewRequestLinksSelf }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/ReviewRequestLinksSelf } self
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
            object = new ReviewRequestLinks();
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
    ]
  );

  return ReviewRequestLinks;
})();

exports.default = ReviewRequestLinks;
