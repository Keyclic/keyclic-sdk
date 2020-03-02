"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WebhookLinksOrganizationIriTemplate = _interopRequireDefault(
  require("./WebhookLinksOrganizationIriTemplate")
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
 * The WebhookLinksOrganization model module.
 * @module model/WebhookLinksOrganization
 */
var WebhookLinksOrganization = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "WebhookLinksOrganization".
     * @alias module:model/WebhookLinksOrganization
     * @class
    
     */
  function WebhookLinksOrganization() {
    _classCallCheck(this, WebhookLinksOrganization);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _WebhookLinksOrganizationIriTemplate.default;
  }
  /**
   * Constructs a "WebhookLinksOrganization" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookLinksOrganization } object Optional instance to populate.
   * @return { module:model/WebhookLinksOrganization } The populated "WebhookLinksOrganization" instance.
   */

  _createClass(
    WebhookLinksOrganization,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the organization associated to the given webhook.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the organization associated to the given webhook.
         * @param { String } href The URI of the organization associated to the given webhook.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/WebhookLinksOrganizationIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/WebhookLinksOrganizationIriTemplate } iriTemplate
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
            object = new WebhookLinksOrganization();
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

  return WebhookLinksOrganization;
})();

exports.default = WebhookLinksOrganization;
