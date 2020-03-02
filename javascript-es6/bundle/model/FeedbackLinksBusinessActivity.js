"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackLinksBusinessActivityIriTemplate = _interopRequireDefault(
  require("./FeedbackLinksBusinessActivityIriTemplate")
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
 * The FeedbackLinksBusinessActivity model module.
 * @module model/FeedbackLinksBusinessActivity
 */
var FeedbackLinksBusinessActivity = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "FeedbackLinksBusinessActivity".
   * @alias module:model/FeedbackLinksBusinessActivity
   * @class
  
   */
  function FeedbackLinksBusinessActivity() {
    _classCallCheck(this, FeedbackLinksBusinessActivity);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _FeedbackLinksBusinessActivityIriTemplate.default;
  }
  /**
   * Constructs a "FeedbackLinksBusinessActivity" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksBusinessActivity } object Optional instance to populate.
   * @return { module:model/FeedbackLinksBusinessActivity } The populated "FeedbackLinksBusinessActivity" instance.
   */

  _createClass(
    FeedbackLinksBusinessActivity,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the businessActivity associated to the given feedback.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the businessActivity associated to the given feedback.
         * @param { String } href The URI of the businessActivity associated to the given feedback.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/FeedbackLinksBusinessActivityIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/FeedbackLinksBusinessActivityIriTemplate } iriTemplate
         */
      },
      {
        key: "setIriTemplate",
        value: function setIriTemplate(iriTemplate) {
          this.iriTemplate = iriTemplate;
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
            object = new FeedbackLinksBusinessActivity();
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
    ]
  );

  return FeedbackLinksBusinessActivity;
})();

exports.default = FeedbackLinksBusinessActivity;
