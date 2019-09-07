"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ExternalServiceLinksProviderIriTemplate = _interopRequireDefault(
  require("./ExternalServiceLinksProviderIriTemplate")
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
 * The ExternalServiceLinksProvider model module.
 * @module model/ExternalServiceLinksProvider
 */
var ExternalServiceLinksProvider =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ExternalServiceLinksProvider".
   * @alias module:model/ExternalServiceLinksProvider
   * @class
  
   */
    function ExternalServiceLinksProvider() {
      _classCallCheck(this, ExternalServiceLinksProvider);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _ExternalServiceLinksProviderIriTemplate.default;
    }
    /**
     * Constructs a "ExternalServiceLinksProvider" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ExternalServiceLinksProvider } object Optional instance to populate.
     * @return { module:model/ExternalServiceLinksProvider } The populated "ExternalServiceLinksProvider" instance.
     */

    _createClass(ExternalServiceLinksProvider, null, [
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
            object = new ExternalServiceLinksProvider();
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
    ]);

    return ExternalServiceLinksProvider;
  })();

exports.default = ExternalServiceLinksProvider;