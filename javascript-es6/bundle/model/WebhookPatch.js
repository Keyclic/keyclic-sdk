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
 * The WebhookPatch model module.
 * @module model/WebhookPatch
 */
var WebhookPatch = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "WebhookPatch".
     * @alias module:model/WebhookPatch
     * @class
    
     */
  function WebhookPatch() {
    _classCallCheck(this, WebhookPatch);

    this.event = null;
    this.payloadUrl = null;
  }
  /**
   * Constructs a "WebhookPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookPatch } object Optional instance to populate.
   * @return { module:model/WebhookPatch } The populated "WebhookPatch" instance.
   */

  _createClass(
    WebhookPatch,
    [
      {
        key: "getEvent",

        /**
         * @return { String }
         */
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
            object = new WebhookPatch();
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

          return object;
        }
      }
    ]
  );

  return WebhookPatch;
})();

exports.default = WebhookPatch;
