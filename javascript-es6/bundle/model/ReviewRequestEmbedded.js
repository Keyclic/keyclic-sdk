"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Review = _interopRequireDefault(require("./Review"));

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
 * The ReviewRequestEmbedded model module.
 * @module model/ReviewRequestEmbedded
 */
var ReviewRequestEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReviewRequestEmbedded".
   * @alias module:model/ReviewRequestEmbedded
   * @class
  
   */
  function ReviewRequestEmbedded() {
    _classCallCheck(this, ReviewRequestEmbedded);

    this.review = null;
    this.reviewType = _Review.default;
  }
  /**
   * Constructs a "ReviewRequestEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewRequestEmbedded } object Optional instance to populate.
   * @return { module:model/ReviewRequestEmbedded } The populated "ReviewRequestEmbedded" instance.
   */

  _createClass(
    ReviewRequestEmbedded,
    [
      {
        key: "getReview",

        /**
         * @return { module:model/Review }
         */
        value: function getReview() {
          return this.review;
        }
        /**
         * @param { module:model/Review } review
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
            object = new ReviewRequestEmbedded();
          }

          if (data.hasOwnProperty("review")) {
            object.review = _ApiClient.default.convertToType(
              data["review"],
              object.reviewType
            );
          }

          return object;
        }
      }
    ]
  );

  return ReviewRequestEmbedded;
})();

exports.default = ReviewRequestEmbedded;
