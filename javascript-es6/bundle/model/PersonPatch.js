"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PersonPatchAgreement = _interopRequireDefault(
  require("./PersonPatchAgreement")
);

var _PersonPatchPreferences = _interopRequireDefault(
  require("./PersonPatchPreferences")
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
 * The PersonPatch model module.
 * @module model/PersonPatch
 */
var PersonPatch = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PersonPatch".
     * @alias module:model/PersonPatch
     * @class
    
     */
  function PersonPatch() {
    _classCallCheck(this, PersonPatch);

    this.agreement = null;
    this.givenName = null;
    this.familyName = null;
    this.email = null;
    this.jobTitle = null;
    this.image = null;
    this.optIn = null;
    this.preferences = null;
    this.telephone = null;
    this.agreementType = _PersonPatchAgreement.default;
    this.preferencesType = _PersonPatchPreferences.default;
  }
  /**
   * Constructs a "PersonPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPatch } object Optional instance to populate.
   * @return { module:model/PersonPatch } The populated "PersonPatch" instance.
   */

  _createClass(
    PersonPatch,
    [
      {
        key: "getAgreement",

        /**
         * @return { module:model/PersonPatchAgreement }
         */
        value: function getAgreement() {
          return this.agreement;
        }
        /**
         * @param { module:model/PersonPatchAgreement } agreement
         */
      },
      {
        key: "setAgreement",
        value: function setAgreement(agreement) {
          this.agreement = agreement;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getGivenName",
        value: function getGivenName() {
          return this.givenName;
        }
        /**
         * @param { String } givenName
         */
      },
      {
        key: "setGivenName",
        value: function setGivenName(givenName) {
          this.givenName = givenName;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getFamilyName",
        value: function getFamilyName() {
          return this.familyName;
        }
        /**
         * @param { String } familyName
         */
      },
      {
        key: "setFamilyName",
        value: function setFamilyName(familyName) {
          this.familyName = familyName;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getEmail",
        value: function getEmail() {
          return this.email;
        }
        /**
         * @param { String } email
         */
      },
      {
        key: "setEmail",
        value: function setEmail(email) {
          this.email = email;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getJobTitle",
        value: function getJobTitle() {
          return this.jobTitle;
        }
        /**
         * @param { String } jobTitle
         */
      },
      {
        key: "setJobTitle",
        value: function setJobTitle(jobTitle) {
          this.jobTitle = jobTitle;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getImage",
        value: function getImage() {
          return this.image;
        }
        /**
         * @param { String } image
         */
      },
      {
        key: "setImage",
        value: function setImage(image) {
          this.image = image;
        }
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getOptIn",
        value: function getOptIn() {
          return this.optIn;
        }
        /**
         * @param { Boolean } optIn
         */
      },
      {
        key: "setOptIn",
        value: function setOptIn(optIn) {
          this.optIn = optIn;
        }
        /**
         * @return { module:model/PersonPatchPreferences }
         */
      },
      {
        key: "getPreferences",
        value: function getPreferences() {
          return this.preferences;
        }
        /**
         * @param { module:model/PersonPatchPreferences } preferences
         */
      },
      {
        key: "setPreferences",
        value: function setPreferences(preferences) {
          this.preferences = preferences;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getTelephone",
        value: function getTelephone() {
          return this.telephone;
        }
        /**
         * @param { String } telephone
         */
      },
      {
        key: "setTelephone",
        value: function setTelephone(telephone) {
          this.telephone = telephone;
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
            object = new PersonPatch();
          }

          if (data.hasOwnProperty("agreement")) {
            object.agreement = _ApiClient.default.convertToType(
              data["agreement"],
              object.agreementType
            );
          }

          if (data.hasOwnProperty("givenName")) {
            object.givenName = _ApiClient.default.convertToType(
              data["givenName"],
              "String"
            );
          }

          if (data.hasOwnProperty("familyName")) {
            object.familyName = _ApiClient.default.convertToType(
              data["familyName"],
              "String"
            );
          }

          if (data.hasOwnProperty("email")) {
            object.email = _ApiClient.default.convertToType(
              data["email"],
              "String"
            );
          }

          if (data.hasOwnProperty("jobTitle")) {
            object.jobTitle = _ApiClient.default.convertToType(
              data["jobTitle"],
              "String"
            );
          }

          if (data.hasOwnProperty("image")) {
            object.image = _ApiClient.default.convertToType(
              data["image"],
              "String"
            );
          }

          if (data.hasOwnProperty("optIn")) {
            object.optIn = _ApiClient.default.convertToType(
              data["optIn"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("preferences")) {
            object.preferences = _ApiClient.default.convertToType(
              data["preferences"],
              object.preferencesType
            );
          }

          if (data.hasOwnProperty("telephone")) {
            object.telephone = _ApiClient.default.convertToType(
              data["telephone"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return PersonPatch;
})();

exports.default = PersonPatch;
