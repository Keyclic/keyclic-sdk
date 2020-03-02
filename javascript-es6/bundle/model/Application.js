"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ApplicationAbout = _interopRequireDefault(require("./ApplicationAbout"));

var _ApplicationAgreement = _interopRequireDefault(
  require("./ApplicationAgreement")
);

var _ApplicationLinks = _interopRequireDefault(require("./ApplicationLinks"));

var _ContactPoint = _interopRequireDefault(require("./ContactPoint"));

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
 * The Application model module.
 * @module model/Application
 */
var Application = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Application".
   * @alias module:model/Application
   * @class
  
   * @param name { String }
  
   * @param token { String }
  
   */
  function Application(name, token) {
    _classCallCheck(this, Application);

    this.links = null;
    this.about = null;
    this.agreement = null;
    this.contactPoints = [];
    this.createdAt = null;
    this.id = null;
    this.name = name;
    this.token = token;
    this.type = null;
    this.updatedAt = null;
    this.version = null;
    this.linksType = _ApplicationLinks.default;
    this.aboutType = _ApplicationAbout.default;
    this.agreementType = _ApplicationAgreement.default;
    this.contactPointsType = _ContactPoint.default;
  }
  /**
   * Constructs a "Application" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Application } object Optional instance to populate.
   * @return { module:model/Application } The populated "Application" instance.
   */

  _createClass(
    Application,
    [
      {
        key: "getLinks",

        /**
         * @return { module:model/ApplicationLinks }
         */
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/ApplicationLinks } links
         */
      },
      {
        key: "setLinks",
        value: function setLinks(links) {
          this.links = links;
        }
        /**
         * @return { module:model/ApplicationAbout }
         */
      },
      {
        key: "getAbout",
        value: function getAbout() {
          return this.about;
        }
        /**
         * @param { module:model/ApplicationAbout } about
         */
      },
      {
        key: "setAbout",
        value: function setAbout(about) {
          this.about = about;
        }
        /**
         * @return { module:model/ApplicationAgreement }
         */
      },
      {
        key: "getAgreement",
        value: function getAgreement() {
          return this.agreement;
        }
        /**
         * @param { module:model/ApplicationAgreement } agreement
         */
      },
      {
        key: "setAgreement",
        value: function setAgreement(agreement) {
          this.agreement = agreement;
        }
        /**
         * @return { Array.<module:model/ContactPoint> }
         */
      },
      {
        key: "getContactPoints",
        value: function getContactPoints() {
          return this.contactPoints;
        }
        /**
         * @param { Array.<module:model/ContactPoint> } contactPoints
         */
      },
      {
        key: "setContactPoints",
        value: function setContactPoints(contactPoints) {
          this.contactPoints = contactPoints;
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
        key: "getToken",
        value: function getToken() {
          return this.token;
        }
        /**
         * @param { String } token
         */
      },
      {
        key: "setToken",
        value: function setToken(token) {
          this.token = token;
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
            object = new Application();
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("about")) {
            object.about = _ApiClient.default.convertToType(
              data["about"],
              object.aboutType
            );
          }

          if (data.hasOwnProperty("agreement")) {
            object.agreement = _ApiClient.default.convertToType(
              data["agreement"],
              object.agreementType
            );
          }

          if (data.hasOwnProperty("contactPoints")) {
            object.contactPoints = _ApiClient.default.convertToType(
              data["contactPoints"],
              [object.contactPointsType]
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("token")) {
            object.token = _ApiClient.default.convertToType(
              data["token"],
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

  return Application;
})();

exports.default = Application;
