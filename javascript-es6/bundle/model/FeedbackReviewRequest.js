"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackReviewRequestLinks = _interopRequireDefault(
  require("./FeedbackReviewRequestLinks")
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
 * The FeedbackReviewRequest model module.
 * @module model/FeedbackReviewRequest
 */
var FeedbackReviewRequest =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackReviewRequest".
   * @alias module:model/FeedbackReviewRequest
   * @class
  
   */
    function FeedbackReviewRequest() {
      _classCallCheck(this, FeedbackReviewRequest);

      this.links = null;
      this.createdAt = null;
      this.id = null;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _FeedbackReviewRequestLinks.default;
    }
    /**
     * Constructs a "FeedbackReviewRequest" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackReviewRequest } object Optional instance to populate.
     * @return { module:model/FeedbackReviewRequest } The populated "FeedbackReviewRequest" instance.
     */

    _createClass(FeedbackReviewRequest, null, [
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
            object = new FeedbackReviewRequest();
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]);

    return FeedbackReviewRequest;
  })();

exports.default = FeedbackReviewRequest;
