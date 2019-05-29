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
  
   * @param preferences { module:model/PersonPreferences }
  
   * @param id { String }
  
   * @param createdAt { Date }
  
   * @param updatedAt { Date }
  
   */
    function Person(optIn, preferences, id, createdAt, updatedAt) {
      _classCallCheck(this, Person);

      this.familyName = null;
      this.givenName = null;
      this.jobTitle = null;
      this.optIn = optIn;
      this.preferences = preferences;
      this.telephone = null;
      this.id = id;
      this.username = null;
      this.email = null;
      this.createdAt = createdAt;
      this.updatedAt = updatedAt;
      this.type = null;
      this.links = null;
      this.preferencesType = _PersonPreferences.default;
      this.linksType = _PersonLinks.default;
    }
    /**
     * Constructs a "Person" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Person } object Optional instance to populate.
     * @return { module:model/Person } The populated "Person" instance.
     */

    _createClass(Person, null, [
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

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("username")) {
            object.username = _ApiClient.default.convertToType(
              data["username"],
              "String"
            );
          }

          if (data.hasOwnProperty("email")) {
            object.email = _ApiClient.default.convertToType(
              data["email"],
              "String"
            );
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

    return Person;
  })();

exports.default = Person;
