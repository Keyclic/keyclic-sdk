"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ExternalServiceLinksProvider = _interopRequireDefault(
  require("./ExternalServiceLinksProvider")
);

var _ExternalServiceLinksSelf = _interopRequireDefault(
  require("./ExternalServiceLinksSelf")
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
 * The ExternalServiceLinks model module.
 * @module model/ExternalServiceLinks
 */
var ExternalServiceLinks = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ExternalServiceLinks".
     * @alias module:model/ExternalServiceLinks
     * @class
    
     */
  function ExternalServiceLinks() {
    _classCallCheck(this, ExternalServiceLinks);

    this.provider = null;
    this.self = null;
    this.providerType = _ExternalServiceLinksProvider.default;
    this.selfType = _ExternalServiceLinksSelf.default;
  }
  /**
   * Constructs a "ExternalServiceLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceLinks } object Optional instance to populate.
   * @return { module:model/ExternalServiceLinks } The populated "ExternalServiceLinks" instance.
   */

  _createClass(
    ExternalServiceLinks,
    [
      {
        key: "getProvider",

        /**
         * @return { module:model/ExternalServiceLinksProvider }
         */
        value: function getProvider() {
          return this.provider;
        }
        /**
         * @param { module:model/ExternalServiceLinksProvider } provider
         */
      },
      {
        key: "setProvider",
        value: function setProvider(provider) {
          this.provider = provider;
        }
        /**
         * @return { module:model/ExternalServiceLinksSelf }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/ExternalServiceLinksSelf } self
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
            object = new ExternalServiceLinks();
          }

          if (data.hasOwnProperty("provider")) {
            object.provider = _ApiClient.default.convertToType(
              data["provider"],
              object.providerType
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

  return ExternalServiceLinks;
})();

exports.default = ExternalServiceLinks;
