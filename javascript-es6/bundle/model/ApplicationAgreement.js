"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ApplicationAgreementPrivacyPolicy = _interopRequireDefault(
  require("./ApplicationAgreementPrivacyPolicy")
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
 * The ApplicationAgreement model module.
 * @module model/ApplicationAgreement
 */
var ApplicationAgreement =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ApplicationAgreement".
   * @alias module:model/ApplicationAgreement
   * @class
  
   */
    function ApplicationAgreement() {
      _classCallCheck(this, ApplicationAgreement);

      this.olderThan = null;
      this.privacyPolicy = null;
      this.termsOfService = null;
      this.privacyPolicyType = _ApplicationAgreementPrivacyPolicy.default;
      this.termsOfServiceType = _ApplicationAgreementPrivacyPolicy.default;
    }
    /**
     * Constructs a "ApplicationAgreement" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ApplicationAgreement } object Optional instance to populate.
     * @return { module:model/ApplicationAgreement } The populated "ApplicationAgreement" instance.
     */

    _createClass(
      ApplicationAgreement,
      [
        {
          key: "getOlderThan",

          /**
           * @return { Number }
           */
          value: function getOlderThan() {
            return this.olderThan;
          }
          /**
           * @param { Number } olderThan
           */
        },
        {
          key: "setOlderThan",
          value: function setOlderThan(olderThan) {
            this.olderThan = olderThan;
          }
          /**
           * @return { module:model/ApplicationAgreementPrivacyPolicy }
           */
        },
        {
          key: "getPrivacyPolicy",
          value: function getPrivacyPolicy() {
            return this.privacyPolicy;
          }
          /**
           * @param { module:model/ApplicationAgreementPrivacyPolicy } privacyPolicy
           */
        },
        {
          key: "setPrivacyPolicy",
          value: function setPrivacyPolicy(privacyPolicy) {
            this.privacyPolicy = privacyPolicy;
          }
          /**
           * @return { module:model/ApplicationAgreementPrivacyPolicy }
           */
        },
        {
          key: "getTermsOfService",
          value: function getTermsOfService() {
            return this.termsOfService;
          }
          /**
           * @param { module:model/ApplicationAgreementPrivacyPolicy } termsOfService
           */
        },
        {
          key: "setTermsOfService",
          value: function setTermsOfService(termsOfService) {
            this.termsOfService = termsOfService;
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
              object = new ApplicationAgreement();
            }

            if (data.hasOwnProperty("olderThan")) {
              object.olderThan = _ApiClient.default.convertToType(
                data["olderThan"],
                "Number"
              );
            }

            if (data.hasOwnProperty("privacyPolicy")) {
              object.privacyPolicy = _ApiClient.default.convertToType(
                data["privacyPolicy"],
                object.privacyPolicyType
              );
            }

            if (data.hasOwnProperty("termsOfService")) {
              object.termsOfService = _ApiClient.default.convertToType(
                data["termsOfService"],
                object.termsOfServiceType
              );
            }

            return object;
          }
        }
      ]
    );

    return ApplicationAgreement;
  })();

exports.default = ApplicationAgreement;
