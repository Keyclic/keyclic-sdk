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
 * The ReviewRequestLinksSelfIriTemplateMapping model module.
 * @module model/ReviewRequestLinksSelfIriTemplateMapping
 */
var ReviewRequestLinksSelfIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReviewRequestLinksSelfIriTemplateMapping".
   * @alias module:model/ReviewRequestLinksSelfIriTemplateMapping
   * @class
  
   */
  function ReviewRequestLinksSelfIriTemplateMapping() {
    _classCallCheck(this, ReviewRequestLinksSelfIriTemplateMapping);

    this.reviewRequest = null;
  }
  /**
   * Constructs a "ReviewRequestLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewRequestLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/ReviewRequestLinksSelfIriTemplateMapping } The populated "ReviewRequestLinksSelfIriTemplateMapping" instance.
   */

  _createClass(
    ReviewRequestLinksSelfIriTemplateMapping,
    [
      {
        key: "getReviewRequest",

        /**
         * @return { String }
         */
        value: function getReviewRequest() {
          return this.reviewRequest;
        }
        /**
         * @param { String } reviewRequest
         */
      },
      {
        key: "setReviewRequest",
        value: function setReviewRequest(reviewRequest) {
          this.reviewRequest = reviewRequest;
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
            object = new ReviewRequestLinksSelfIriTemplateMapping();
          }

          if (data.hasOwnProperty("reviewRequest")) {
            object.reviewRequest = _ApiClient.default.convertToType(
              data["reviewRequest"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return ReviewRequestLinksSelfIriTemplateMapping;
})();

exports.default = ReviewRequestLinksSelfIriTemplateMapping;
