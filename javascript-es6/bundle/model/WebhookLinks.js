"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WebhookLinksOrganization = _interopRequireDefault(
  require("./WebhookLinksOrganization")
);

var _WebhookLinksSelf = _interopRequireDefault(require("./WebhookLinksSelf"));

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
 * The WebhookLinks model module.
 * @module model/WebhookLinks
 */
var WebhookLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "WebhookLinks".
   * @alias module:model/WebhookLinks
   * @class
  
   */
    function WebhookLinks() {
      _classCallCheck(this, WebhookLinks);

      this.organization = null;
      this.self = null;
      this.organizationType = _WebhookLinksOrganization.default;
      this.selfType = _WebhookLinksSelf.default;
    }
    /**
     * Constructs a "WebhookLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/WebhookLinks } object Optional instance to populate.
     * @return { module:model/WebhookLinks } The populated "WebhookLinks" instance.
     */

    _createClass(
      WebhookLinks,
      [
        {
          key: "getOrganization",

          /**
           * @return { module:model/WebhookLinksOrganization }
           */
          value: function getOrganization() {
            return this.organization;
          }
          /**
           * @param { module:model/WebhookLinksOrganization } organization
           */
        },
        {
          key: "setOrganization",
          value: function setOrganization(organization) {
            this.organization = organization;
          }
          /**
           * @return { module:model/WebhookLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/WebhookLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
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
              object = new WebhookLinks();
            }

            if (data.hasOwnProperty("organization")) {
              object.organization = _ApiClient.default.convertToType(
                data["organization"],
                object.organizationType
              );
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            return object;
          }
        }
      ]
    );

    return WebhookLinks;
  })();

exports.default = WebhookLinks;
