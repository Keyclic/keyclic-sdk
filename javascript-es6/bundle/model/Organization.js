"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationLinks = _interopRequireDefault(require("./OrganizationLinks"));

var _Preferences = _interopRequireDefault(require("./Preferences"));

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
 * The Organization model module.
 * @module model/Organization
 */
var Organization =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Organization".
   * @alias module:model/Organization
   * @class
  
   * @param name { String }
  
   */
    function Organization(name) {
      _classCallCheck(this, Organization);

      this.links = null;
      this.alternateName = null;
      this.billingEmailAddress = null;
      this.createdAt = null;
      this.description = null;
      this.enabled = null;
      this.id = null;
      this.name = name;
      this.notificationEmailAddress = null;
      this.preferences = null;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _OrganizationLinks.default;
      this.preferencesType = _Preferences.default;
    }
    /**
     * Constructs a "Organization" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Organization } object Optional instance to populate.
     * @return { module:model/Organization } The populated "Organization" instance.
     */

    _createClass(
      Organization,
      [
        {
          key: "getLinks",

          /**
           * @return { module:model/OrganizationLinks }
           */
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/OrganizationLinks } links
           */
        },
        {
          key: "setLinks",
          value: function setLinks(links) {
            this.links = links;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getAlternateName",
          value: function getAlternateName() {
            return this.alternateName;
          }
          /**
           * @param { String } alternateName
           */
        },
        {
          key: "setAlternateName",
          value: function setAlternateName(alternateName) {
            this.alternateName = alternateName;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getBillingEmailAddress",
          value: function getBillingEmailAddress() {
            return this.billingEmailAddress;
          }
          /**
           * @param { String } billingEmailAddress
           */
        },
        {
          key: "setBillingEmailAddress",
          value: function setBillingEmailAddress(billingEmailAddress) {
            this.billingEmailAddress = billingEmailAddress;
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
          key: "getDescription",
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getEnabled",
          value: function getEnabled() {
            return this.enabled;
          }
          /**
           * @param { Boolean } enabled
           */
        },
        {
          key: "setEnabled",
          value: function setEnabled(enabled) {
            this.enabled = enabled;
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
          key: "getName",
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getNotificationEmailAddress",
          value: function getNotificationEmailAddress() {
            return this.notificationEmailAddress;
          }
          /**
           * @param { String } notificationEmailAddress
           */
        },
        {
          key: "setNotificationEmailAddress",
          value: function setNotificationEmailAddress(
            notificationEmailAddress
          ) {
            this.notificationEmailAddress = notificationEmailAddress;
          }
          /**
           * @return { module:model/Preferences }
           */
        },
        {
          key: "getPreferences",
          value: function getPreferences() {
            return this.preferences;
          }
          /**
           * @param { module:model/Preferences } preferences
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
              object = new Organization();
            }

            if (data.hasOwnProperty("_links")) {
              object.links = _ApiClient.default.convertToType(
                data["_links"],
                object.linksType
              );
            }

            if (data.hasOwnProperty("alternateName")) {
              object.alternateName = _ApiClient.default.convertToType(
                data["alternateName"],
                "String"
              );
            }

            if (data.hasOwnProperty("billingEmailAddress")) {
              object.billingEmailAddress = _ApiClient.default.convertToType(
                data["billingEmailAddress"],
                "String"
              );
            }

            if (data.hasOwnProperty("createdAt")) {
              object.createdAt = _ApiClient.default.convertToType(
                data["createdAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("enabled")) {
              object.enabled = _ApiClient.default.convertToType(
                data["enabled"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("notificationEmailAddress")) {
              object.notificationEmailAddress = _ApiClient.default.convertToType(
                data["notificationEmailAddress"],
                "String"
              );
            }

            if (data.hasOwnProperty("preferences")) {
              object.preferences = _ApiClient.default.convertToType(
                data["preferences"],
                object.preferencesType
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

            return object;
          }
        }
      ]
    );

    return Organization;
  })();

exports.default = Organization;
