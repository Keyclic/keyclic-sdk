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
 * The FeedbackReviewRequestLinksReviewIriTemplateMapping model module.
 * @module model/FeedbackReviewRequestLinksReviewIriTemplateMapping
 */
var FeedbackReviewRequestLinksReviewIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackReviewRequestLinksReviewIriTemplateMapping".
   * @alias module:model/FeedbackReviewRequestLinksReviewIriTemplateMapping
   * @class
  
   */
    function FeedbackReviewRequestLinksReviewIriTemplateMapping() {
      _classCallCheck(this, FeedbackReviewRequestLinksReviewIriTemplateMapping);

      this.review = null;
    }
    /**
     * Constructs a "FeedbackReviewRequestLinksReviewIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackReviewRequestLinksReviewIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/FeedbackReviewRequestLinksReviewIriTemplateMapping } The populated "FeedbackReviewRequestLinksReviewIriTemplateMapping" instance.
     */

    _createClass(
      FeedbackReviewRequestLinksReviewIriTemplateMapping,
      [
        {
          key: "getReview",

          /**
           * @return { String }
           */
          value: function getReview() {
            return this.review;
          }
          /**
           * @param { String } review
           */
        },
        {
          key: "setReview",
          value: function setReview(review) {
            this.review = review;
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
              object = new FeedbackReviewRequestLinksReviewIriTemplateMapping();
            }

            if (data.hasOwnProperty("review")) {
              object.review = _ApiClient.default.convertToType(
                data["review"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return FeedbackReviewRequestLinksReviewIriTemplateMapping;
  })();

exports.default = FeedbackReviewRequestLinksReviewIriTemplateMapping;
