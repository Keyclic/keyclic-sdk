"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewLinksSelfIriTemplate = _interopRequireDefault(
  require("./ReviewLinksSelfIriTemplate")
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
 * The ReviewLinksSelf model module.
 * @module model/ReviewLinksSelf
 */
var ReviewLinksSelf =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReviewLinksSelf".
   * @alias module:model/ReviewLinksSelf
   * @class
  
   */
    function ReviewLinksSelf() {
      _classCallCheck(this, ReviewLinksSelf);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _ReviewLinksSelfIriTemplate.default;
    }
    /**
     * Constructs a "ReviewLinksSelf" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReviewLinksSelf } object Optional instance to populate.
     * @return { module:model/ReviewLinksSelf } The populated "ReviewLinksSelf" instance.
     */

    _createClass(ReviewLinksSelf, null, [
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
            object = new ReviewLinksSelf();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]);

    return ReviewLinksSelf;
  })();

exports.default = ReviewLinksSelf;
