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
 * The PersonPatchAgreement model module.
 * @module model/PersonPatchAgreement
 */
var PersonPatchAgreement = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PersonPatchAgreement".
   * @alias module:model/PersonPatchAgreement
   * @class
  
   */
  function PersonPatchAgreement() {
    _classCallCheck(this, PersonPatchAgreement);

    this.privacyPolicy = null;
    this.termsOfService = null;
    this.olderThan = null;
  }
  /**
   * Constructs a "PersonPatchAgreement" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPatchAgreement } object Optional instance to populate.
   * @return { module:model/PersonPatchAgreement } The populated "PersonPatchAgreement" instance.
   */

  _createClass(
    PersonPatchAgreement,
    [
      {
        key: "getPrivacyPolicy",

        /**
         * @return { Boolean }
         */
        value: function getPrivacyPolicy() {
          return this.privacyPolicy;
        }
        /**
         * @param { Boolean } privacyPolicy
         */
      },
      {
        key: "setPrivacyPolicy",
        value: function setPrivacyPolicy(privacyPolicy) {
          this.privacyPolicy = privacyPolicy;
        }
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getTermsOfService",
        value: function getTermsOfService() {
          return this.termsOfService;
        }
        /**
         * @param { Boolean } termsOfService
         */
      },
      {
        key: "setTermsOfService",
        value: function setTermsOfService(termsOfService) {
          this.termsOfService = termsOfService;
        }
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getOlderThan",
        value: function getOlderThan() {
          return this.olderThan;
        }
        /**
         * @param { Boolean } olderThan
         */
      },
      {
        key: "setOlderThan",
        value: function setOlderThan(olderThan) {
          this.olderThan = olderThan;
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
            object = new PersonPatchAgreement();
          }

          if (data.hasOwnProperty("privacyPolicy")) {
            object.privacyPolicy = _ApiClient.default.convertToType(
              data["privacyPolicy"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("termsOfService")) {
            object.termsOfService = _ApiClient.default.convertToType(
              data["termsOfService"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("olderThan")) {
            object.olderThan = _ApiClient.default.convertToType(
              data["olderThan"],
              "Boolean"
            );
          }

          return object;
        }
      }
    ]
  );

  return PersonPatchAgreement;
})();

exports.default = PersonPatchAgreement;
