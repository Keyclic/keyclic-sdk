"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewLinks = _interopRequireDefault(require("./ReviewLinks"));

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
 * The Review model module.
 * @module model/Review
 */
var Review =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Review".
   * @alias module:model/Review
   * @class
  
   */
    function Review() {
      _classCallCheck(this, Review);

      this.links = null;
      this.createdAt = null;
      this.id = null;
      this.reviewBody = null;
      this.reviewRating = null;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _ReviewLinks.default;
    }
    /**
     * Constructs a "Review" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Review } object Optional instance to populate.
     * @return { module:model/Review } The populated "Review" instance.
     */

    _createClass(
      Review,
      [
        {
          key: "getLinks",

          /**
           * @return { module:model/ReviewLinks }
           */
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/ReviewLinks } links
           */
        },
        {
          key: "setLinks",
          value: function setLinks(links) {
            this.links = links;
          }
          /**
           * @return { Date }
           */
        },
        {
          key: "getCreatedAt",
          value: function getCreatedAt() {
            return this.createdAt;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getId",
          value: function getId() {
            return this.id;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getReviewBody",
          value: function getReviewBody() {
            return this.reviewBody;
          }
          /**
           * @param { String } reviewBody
           */
        },
        {
          key: "setReviewBody",
          value: function setReviewBody(reviewBody) {
            this.reviewBody = reviewBody;
          }
          /**
           * minimum: 1
           * maximum: 5
           * @return { Number }
           */
        },
        {
          key: "getReviewRating",
          value: function getReviewRating() {
            return this.reviewRating;
          }
          /**
           * @param { Number } reviewRating
           */
        },
        {
          key: "setReviewRating",
          value: function setReviewRating(reviewRating) {
            this.reviewRating = reviewRating;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
          }
          /**
           * @return { Date }
           */
        },
        {
          key: "getUpdatedAt",
          value: function getUpdatedAt() {
            return this.updatedAt;
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
              object = new Review();
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
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("reviewBody")) {
              object.reviewBody = _ApiClient.default.convertToType(
                data["reviewBody"],
                "String"
              );
            }

            if (data.hasOwnProperty("reviewRating")) {
              object.reviewRating = _ApiClient.default.convertToType(
                data["reviewRating"],
                "Number"
              );
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
      ]
    );

    return Review;
  })();

exports.default = Review;
