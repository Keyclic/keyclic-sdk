"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WebhookLinks = _interopRequireDefault(require("./WebhookLinks"));

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
 * The Webhook model module.
 * @module model/Webhook
 */
var Webhook =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Webhook".
   * @alias module:model/Webhook
   * @class
  
   * @param enabled { Boolean }
  
   * @param event { String }
  
   * @param payloadUrl { String }
  
   */
    function Webhook(enabled, event, payloadUrl) {
      _classCallCheck(this, Webhook);

      this.links = null;
      this.createdAt = null;
      this.enabled = enabled;
      this.event = event;
      this.id = null;
      this.payloadUrl = payloadUrl;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _WebhookLinks.default;
    }
    /**
     * Constructs a "Webhook" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Webhook } object Optional instance to populate.
     * @return { module:model/Webhook } The populated "Webhook" instance.
     */

    _createClass(
      Webhook,
      [
        {
          key: "getLinks",

          /**
           * @return { module:model/WebhookLinks }
           */
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/WebhookLinks } links
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
           * @return { Boolean }
           */
        },
        {
          key: "getEnabled",
          value: function getEnabled() {
            return this.enabled;
          }
          /**
           * @param { Boolean } enabled
           */
        },
        {
          key: "setEnabled",
          value: function setEnabled(enabled) {
            this.enabled = enabled;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getEvent",
          value: function getEvent() {
            return this.event;
          }
          /**
           * @param { String } event
           */
        },
        {
          key: "setEvent",
          value: function setEvent(event) {
            this.event = event;
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
          key: "getPayloadUrl",
          value: function getPayloadUrl() {
            return this.payloadUrl;
          }
          /**
           * @param { String } payloadUrl
           */
        },
        {
          key: "setPayloadUrl",
          value: function setPayloadUrl(payloadUrl) {
            this.payloadUrl = payloadUrl;
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
              object = new Webhook();
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

            if (data.hasOwnProperty("enabled")) {
              object.enabled = _ApiClient.default.convertToType(
                data["enabled"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("event")) {
              object.event = _ApiClient.default.convertToType(
                data["event"],
                "String"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("payloadUrl")) {
              object.payloadUrl = _ApiClient.default.convertToType(
                data["payloadUrl"],
                "String"
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

    return Webhook;
  })();

exports.default = Webhook;
