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
 * The ReviewData model module.
 * @module model/ReviewData
 */
var ReviewData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReviewData".
   * @alias module:model/ReviewData
   * @class
  
   * @param reviewRating { Number }
  
   * @param reviewRequest { String }
  
   */
    function ReviewData(reviewRating, reviewRequest) {
      _classCallCheck(this, ReviewData);

      this.reviewBody = null;
      this.reviewRating = reviewRating;
      this.reviewRequest = reviewRequest;
    }
    /**
     * Constructs a "ReviewData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReviewData } object Optional instance to populate.
     * @return { module:model/ReviewData } The populated "ReviewData" instance.
     */

    _createClass(ReviewData, null, [
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
            object = new ReviewData();
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

          if (data.hasOwnProperty("reviewRequest")) {
            object.reviewRequest = _ApiClient.default.convertToType(
              data["reviewRequest"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return ReviewData;
  })();

exports.default = ReviewData;
