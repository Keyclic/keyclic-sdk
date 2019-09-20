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
 * The WebhookLinksSelfIriTemplateMapping model module.
 * @module model/WebhookLinksSelfIriTemplateMapping
 */
var WebhookLinksSelfIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "WebhookLinksSelfIriTemplateMapping".
   * @alias module:model/WebhookLinksSelfIriTemplateMapping
   * @class
  
   */
    function WebhookLinksSelfIriTemplateMapping() {
      _classCallCheck(this, WebhookLinksSelfIriTemplateMapping);

      this.webhook = null;
    }
    /**
     * Constructs a "WebhookLinksSelfIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/WebhookLinksSelfIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/WebhookLinksSelfIriTemplateMapping } The populated "WebhookLinksSelfIriTemplateMapping" instance.
     */

    _createClass(
      WebhookLinksSelfIriTemplateMapping,
      [
        {
          key: "getWebhook",

          /**
           * @return { String }
           */
          value: function getWebhook() {
            return this.webhook;
          }
          /**
           * @param { String } webhook
           */
        },
        {
          key: "setWebhook",
          value: function setWebhook(webhook) {
            this.webhook = webhook;
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
              object = new WebhookLinksSelfIriTemplateMapping();
            }

            if (data.hasOwnProperty("webhook")) {
              object.webhook = _ApiClient.default.convertToType(
                data["webhook"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return WebhookLinksSelfIriTemplateMapping;
  })();

exports.default = WebhookLinksSelfIriTemplateMapping;
