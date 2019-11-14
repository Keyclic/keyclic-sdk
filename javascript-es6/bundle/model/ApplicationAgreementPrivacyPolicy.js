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
 * The ApplicationAgreementPrivacyPolicy model module.
 * @module model/ApplicationAgreementPrivacyPolicy
 */
var ApplicationAgreementPrivacyPolicy =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ApplicationAgreementPrivacyPolicy".
   * @alias module:model/ApplicationAgreementPrivacyPolicy
   * @class
  
   */
    function ApplicationAgreementPrivacyPolicy() {
      _classCallCheck(this, ApplicationAgreementPrivacyPolicy);

      this.content = null;
      this.version = null;
    }
    /**
     * Constructs a "ApplicationAgreementPrivacyPolicy" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ApplicationAgreementPrivacyPolicy } object Optional instance to populate.
     * @return { module:model/ApplicationAgreementPrivacyPolicy } The populated "ApplicationAgreementPrivacyPolicy" instance.
     */

    _createClass(
      ApplicationAgreementPrivacyPolicy,
      [
        {
          key: "getContent",

          /**
           * @return { String }
           */
          value: function getContent() {
            return this.content;
          }
          /**
           * @param { String } content
           */
        },
        {
          key: "setContent",
          value: function setContent(content) {
            this.content = content;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getVersion",
          value: function getVersion() {
            return this.version;
          }
          /**
           * @param { String } version
           */
        },
        {
          key: "setVersion",
          value: function setVersion(version) {
            this.version = version;
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
              object = new ApplicationAgreementPrivacyPolicy();
            }

            if (data.hasOwnProperty("content")) {
              object.content = _ApiClient.default.convertToType(
                data["content"],
                "String"
              );
            }

            if (data.hasOwnProperty("version")) {
              object.version = _ApiClient.default.convertToType(
                data["version"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ApplicationAgreementPrivacyPolicy;
  })();

exports.default = ApplicationAgreementPrivacyPolicy;
