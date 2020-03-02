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
 * The ExternalServiceData model module.
 * @module model/ExternalServiceData
 */
var ExternalServiceData = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ExternalServiceData".
     * @alias module:model/ExternalServiceData
     * @class
    
     * @param organization { String }
    
     * @param name { String }
    
     * @param provider { String }
    
     */
  function ExternalServiceData(organization, name, provider) {
    _classCallCheck(this, ExternalServiceData);

    this.organization = organization;
    this.name = name;
    this.description = null;
    this.provider = provider;
  }
  /**
   * Constructs a "ExternalServiceData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceData } object Optional instance to populate.
   * @return { module:model/ExternalServiceData } The populated "ExternalServiceData" instance.
   */

  _createClass(
    ExternalServiceData,
    [
      {
        key: "getOrganization",

        /**
         * @return { String }
         */
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { String } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
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
         * @return { String }
         */
      },
      {
        key: "getProvider",
        value: function getProvider() {
          return this.provider;
        }
        /**
         * @param { String } provider
         */
      },
      {
        key: "setProvider",
        value: function setProvider(provider) {
          this.provider = provider;
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
            object = new ExternalServiceData();
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              "String"
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("provider")) {
            object.provider = _ApiClient.default.convertToType(
              data["provider"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return ExternalServiceData;
})();

exports.default = ExternalServiceData;
