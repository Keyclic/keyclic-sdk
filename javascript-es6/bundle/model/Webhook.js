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
  
   * @param id { String }
  
   */
    function Webhook(enabled, event, payloadUrl, id) {
      _classCallCheck(this, Webhook);

      this.enabled = enabled;
      this.event = event;
      this.payloadUrl = payloadUrl;
      this.id = id;
      this.type = null;
      this.links = null;
      this.linksType = _WebhookLinks.default;
    }
    /**
     * Constructs a "Webhook" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Webhook } object Optional instance to populate.
     * @return { module:model/Webhook } The populated "Webhook" instance.
     */

    _createClass(Webhook, null, [
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

          if (data.hasOwnProperty("payloadUrl")) {
            object.payloadUrl = _ApiClient.default.convertToType(
              data["payloadUrl"],
              "String"
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

    return Webhook;
  })();

exports.default = Webhook;
