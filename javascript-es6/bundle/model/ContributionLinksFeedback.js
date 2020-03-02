"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ContributionLinksFeedbackIriTemplate = _interopRequireDefault(
  require("./ContributionLinksFeedbackIriTemplate")
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
 * The ContributionLinksFeedback model module.
 * @module model/ContributionLinksFeedback
 */
var ContributionLinksFeedback = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ContributionLinksFeedback".
     * @alias module:model/ContributionLinksFeedback
     * @class
    
     */
  function ContributionLinksFeedback() {
    _classCallCheck(this, ContributionLinksFeedback);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _ContributionLinksFeedbackIriTemplate.default;
  }
  /**
   * Constructs a "ContributionLinksFeedback" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksFeedback } object Optional instance to populate.
   * @return { module:model/ContributionLinksFeedback } The populated "ContributionLinksFeedback" instance.
   */

  _createClass(
    ContributionLinksFeedback,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the feedback associated to the given contribution.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the feedback associated to the given contribution.
         * @param { String } href The URI of the feedback associated to the given contribution.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/ContributionLinksFeedbackIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/ContributionLinksFeedbackIriTemplate } iriTemplate
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
            object = new ContributionLinksFeedback();
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

  return ContributionLinksFeedback;
})();

exports.default = ContributionLinksFeedback;
