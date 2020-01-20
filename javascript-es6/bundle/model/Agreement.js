"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OlderThan = _interopRequireDefault(require("./OlderThan"));

var _PrivacyPolicy = _interopRequireDefault(require("./PrivacyPolicy"));

var _TermsOfService = _interopRequireDefault(require("./TermsOfService"));

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
 * The Agreement model module.
 * @module model/Agreement
 */
var Agreement =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Agreement".
   * @alias module:model/Agreement
   * @class
  
   */
    function Agreement() {
      _classCallCheck(this, Agreement);

      this.olderThan = null;
      this.privacyPolicy = null;
      this.termsOfService = null;
      this.olderThanType = _OlderThan.default;
      this.privacyPolicyType = _PrivacyPolicy.default;
      this.termsOfServiceType = _TermsOfService.default;
    }
    /**
     * Constructs a "Agreement" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Agreement } object Optional instance to populate.
     * @return { module:model/Agreement } The populated "Agreement" instance.
     */

    _createClass(
      Agreement,
      [
        {
          key: "getOlderThan",

          /**
           * @return { module:model/OlderThan }
           */
          value: function getOlderThan() {
            return this.olderThan;
          }
          /**
           * @param { module:model/OlderThan } olderThan
           */
        },
        {
          key: "setOlderThan",
          value: function setOlderThan(olderThan) {
            this.olderThan = olderThan;
          }
          /**
           * @return { module:model/PrivacyPolicy }
           */
        },
        {
          key: "getPrivacyPolicy",
          value: function getPrivacyPolicy() {
            return this.privacyPolicy;
          }
          /**
           * @param { module:model/PrivacyPolicy } privacyPolicy
           */
        },
        {
          key: "setPrivacyPolicy",
          value: function setPrivacyPolicy(privacyPolicy) {
            this.privacyPolicy = privacyPolicy;
          }
          /**
           * @return { module:model/TermsOfService }
           */
        },
        {
          key: "getTermsOfService",
          value: function getTermsOfService() {
            return this.termsOfService;
          }
          /**
           * @param { module:model/TermsOfService } termsOfService
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
              object = new Agreement();
            }

            if (data.hasOwnProperty("olderThan")) {
              object.olderThan = _ApiClient.default.convertToType(
                data["olderThan"],
                object.olderThanType
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

    return Agreement;
  })();

exports.default = Agreement;
