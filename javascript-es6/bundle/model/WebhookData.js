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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The WebhookData model module.
 * @module model/WebhookData
 */
var WebhookData = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "WebhookData".
   * @alias module:model/WebhookData
   * @class
  
   * @param event { module:model/WebhookData.EventEnum }
  
   * @param organization { String }
  
   * @param payloadUrl { String }
  
   */
  function WebhookData(event, organization, payloadUrl) {
    _classCallCheck(this, WebhookData);

    this.event = event;
    this.organization = organization;
    this.payloadUrl = payloadUrl;
  }
  /**
   * Constructs a "WebhookData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookData } object Optional instance to populate.
   * @return { module:model/WebhookData } The populated "WebhookData" instance.
   */

  _createClass(
    WebhookData,
    [
      {
        key: "getEvent",

        /**
         * @return { module:model/WebhookData.EventEnum }
         */
        value: function getEvent() {
          return this.event;
        }
        /**
         * @param { module:model/WebhookData.EventEnum } event
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
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { String } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
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
         * Allowed values for the "event" property.
         * @enum { String }
         */
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
            object = new WebhookData();
          }

          if (data.hasOwnProperty("event")) {
            object.event = _ApiClient.default.convertToType(
              data["event"],
              "String"
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
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

  return WebhookData;
})();

exports.default = WebhookData;

_defineProperty(WebhookData, "EventEnum", {
  /**
   * value: "operationCreated"
   * @const
   * @readonly
   */
  operationCreated: "operationCreated",

  /**
   * value: "operationStateChanged"
   * @const
   * @readonly
   */
  operationStateChanged: "operationStateChanged",

  /**
   * value: "reportCreated"
   * @const
   * @readonly
   */
  reportCreated: "reportCreated",

  /**
   * value: "reportStateChanged"
   * @const
   * @readonly
   */
  reportStateChanged: "reportStateChanged"
});
