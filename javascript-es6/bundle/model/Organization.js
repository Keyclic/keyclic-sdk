"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationLinks = _interopRequireDefault(require("./OrganizationLinks"));

var _OrganizationPreferences = _interopRequireDefault(
  require("./OrganizationPreferences")
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
  
   * @param preferences { module:model/OrganizationPreferences }
  
   * @param id { String }
  
   * @param updatedAt { Date }
  
   */
    function Organization(name, preferences, id, updatedAt) {
      _classCallCheck(this, Organization);

      this.alternateName = null;
      this.billingEmailAddress = null;
      this.description = null;
      this.name = name;
      this.notificationEmailAddress = null;
      this.preferences = preferences;
      this.id = id;
      this.createdAt = null;
      this.updatedAt = updatedAt;
      this.type = null;
      this.isEnabled = null;
      this.enabled = null;
      this.links = null;
      this.preferencesType = _OrganizationPreferences.default;
      this.linksType = _OrganizationLinks.default;
    }
    /**
     * Constructs a "Organization" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Organization } object Optional instance to populate.
     * @return { module:model/Organization } The populated "Organization" instance.
     */

    _createClass(Organization, null, [
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

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
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

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("isEnabled")) {
            object.isEnabled = _ApiClient.default.convertToType(
              data["isEnabled"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("enabled")) {
            object.enabled = _ApiClient.default.convertToType(
              data["enabled"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          return object;
        }
      }
    ]);

    return Organization;
  })();

exports.default = Organization;
