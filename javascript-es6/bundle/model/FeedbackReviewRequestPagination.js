"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackReviewRequestCollection = _interopRequireDefault(
  require("./FeedbackReviewRequestCollection")
);

var _PaginationLinks = _interopRequireDefault(require("./PaginationLinks"));

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
 * The FeedbackReviewRequestPagination model module.
 * @module model/FeedbackReviewRequestPagination
 */
var FeedbackReviewRequestPagination =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackReviewRequestPagination".
   * @alias module:model/FeedbackReviewRequestPagination
   * @class
  
   */
    function FeedbackReviewRequestPagination() {
      _classCallCheck(this, FeedbackReviewRequestPagination);

      this.limit = null;
      this.page = null;
      this.pages = null;
      this.total = null;
      this.embedded = null;
      this.links = null;
      this.embeddedType = _FeedbackReviewRequestCollection.default;
      this.linksType = _PaginationLinks.default;
    }
    /**
     * Constructs a "FeedbackReviewRequestPagination" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackReviewRequestPagination } object Optional instance to populate.
     * @return { module:model/FeedbackReviewRequestPagination } The populated "FeedbackReviewRequestPagination" instance.
     */

    _createClass(FeedbackReviewRequestPagination, null, [
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
            object = new FeedbackReviewRequestPagination();
          }

          if (data.hasOwnProperty("limit")) {
            object.limit = _ApiClient.default.convertToType(
              data["limit"],
              "Number"
            );
          }

          if (data.hasOwnProperty("page")) {
            object.page = _ApiClient.default.convertToType(
              data["page"],
              "Number"
            );
          }

          if (data.hasOwnProperty("pages")) {
            object.pages = _ApiClient.default.convertToType(
              data["pages"],
              "Number"
            );
          }

          if (data.hasOwnProperty("total")) {
            object.total = _ApiClient.default.convertToType(
              data["total"],
              "Number"
            );
          }

          if (data.hasOwnProperty("_embedded")) {
            object.embedded = _ApiClient.default.convertToType(
              data["_embedded"],
              object.embeddedType
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          return object;
        }
      }
    ]);

    return FeedbackReviewRequestPagination;
  })();

exports.default = FeedbackReviewRequestPagination;
