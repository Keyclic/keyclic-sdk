"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PersonLinks = _interopRequireDefault(require("./PersonLinks"));

var _PersonPreferences = _interopRequireDefault(require("./PersonPreferences"));

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
 * The Person model module.
 * @module model/Person
 */
var Person =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Person".
   * @alias module:model/Person
   * @class
  
   * @param optIn { Boolean }
  
   */
    function Person(optIn) {
      _classCallCheck(this, Person);

      this.links = null;
      this.createdAt = null;
      this.email = null;
      this.familyName = null;
      this.givenName = null;
      this.id = null;
      this.jobTitle = null;
      this.optIn = optIn;
      this.preferences = null;
      this.telephone = null;
      this.type = null;
      this.updatedAt = null;
      this.username = null;
      this.linksType = _PersonLinks.default;
      this.preferencesType = _PersonPreferences.default;
    }
    /**
     * Constructs a "Person" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Person } object Optional instance to populate.
     * @return { module:model/Person } The populated "Person" instance.
     */

    _createClass(
      Person,
      [
        {
          key: "getLinks",

          /**
           * @return { module:model/PersonLinks }
           */
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/PersonLinks } links
           */
        },
        {
          key: "setLinks",
          value: function setLinks(links) {
            this.links = links;
          }
          /**
           * @return { Date }
           */
        },
        {
          key: "getCreatedAt",
          value: function getCreatedAt() {
            return this.createdAt;
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
          key: "getId",
          value: function getId() {
            return this.id;
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
           * @return { module:model/PersonPreferences }
           */
        },
        {
          key: "getPreferences",
          value: function getPreferences() {
            return this.preferences;
          }
          /**
           * @param { module:model/PersonPreferences } preferences
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
          /**
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
          }
          /**
           * @return { Date }
           */
        },
        {
          key: "getUpdatedAt",
          value: function getUpdatedAt() {
            return this.updatedAt;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getUsername",
          value: function getUsername() {
            return this.username;
          }
          /**
           * @param { String } username
           */
        },
        {
          key: "setUsername",
          value: function setUsername(username) {
            this.username = username;
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
              object = new Person();
            }

            if (data.hasOwnProperty("_links")) {
              object.links = _ApiClient.default.convertToType(
                data["_links"],
                object.linksType
              );
            }

            if (data.hasOwnProperty("createdAt")) {
              object.createdAt = _ApiClient.default.convertToType(
                data["createdAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("email")) {
              object.email = _ApiClient.default.convertToType(
                data["email"],
                "String"
              );
            }

            if (data.hasOwnProperty("familyName")) {
              object.familyName = _ApiClient.default.convertToType(
                data["familyName"],
                "String"
              );
            }

            if (data.hasOwnProperty("givenName")) {
              object.givenName = _ApiClient.default.convertToType(
                data["givenName"],
                "String"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("jobTitle")) {
              object.jobTitle = _ApiClient.default.convertToType(
                data["jobTitle"],
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

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            if (data.hasOwnProperty("updatedAt")) {
              object.updatedAt = _ApiClient.default.convertToType(
                data["updatedAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("username")) {
              object.username = _ApiClient.default.convertToType(
                data["username"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Person;
  })();

exports.default = Person;
