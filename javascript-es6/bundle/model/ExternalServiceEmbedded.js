"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Organization = _interopRequireDefault(require("./Organization"));

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
 * The ExternalServiceEmbedded model module.
 * @module model/ExternalServiceEmbedded
 */
var ExternalServiceEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ExternalServiceEmbedded".
   * @alias module:model/ExternalServiceEmbedded
   * @class
  
   */
  function ExternalServiceEmbedded() {
    _classCallCheck(this, ExternalServiceEmbedded);

    this.provider = null;
    this.providerType = _Organization.default;
  }
  /**
   * Constructs a "ExternalServiceEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceEmbedded } object Optional instance to populate.
   * @return { module:model/ExternalServiceEmbedded } The populated "ExternalServiceEmbedded" instance.
   */

  _createClass(
    ExternalServiceEmbedded,
    [
      {
        key: "getProvider",

        /**
         * @return { module:model/Organization }
         */
        value: function getProvider() {
          return this.provider;
        }
        /**
         * @param { module:model/Organization } provider
         */
      },
      {
        key: "setProvider",
        value: function setProvider(provider) {
          this.provider = provider;
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
            object = new ExternalServiceEmbedded();
          }

          if (data.hasOwnProperty("provider")) {
            object.provider = _ApiClient.default.convertToType(
              data["provider"],
              object.providerType
            );
          }

          return object;
        }
      }
    ]
  );

  return ExternalServiceEmbedded;
})();

exports.default = ExternalServiceEmbedded;
