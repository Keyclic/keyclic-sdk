"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _MemberDataContactPoint = _interopRequireDefault(
  require("./MemberDataContactPoint")
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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The MemberData model module.
 * @module model/MemberData
 */
var MemberData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "MemberData".
   * @alias module:model/MemberData
   * @class
  
   * @param organization { String }
  
   */
    function MemberData(organization) {
      _classCallCheck(this, MemberData);

      this.contactPoint = null;
      this.organization = organization;
      this.person = null;
      this.type = null;
      this.contactPointType = _MemberDataContactPoint.default;
    }
    /**
     * Constructs a "MemberData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/MemberData } object Optional instance to populate.
     * @return { module:model/MemberData } The populated "MemberData" instance.
     */

    _createClass(
      MemberData,
      [
        {
          key: "getContactPoint",

          /**
           * @return { module:model/MemberDataContactPoint }
           */
          value: function getContactPoint() {
            return this.contactPoint;
          }
          /**
           * @param { module:model/MemberDataContactPoint } contactPoint
           */
        },
        {
          key: "setContactPoint",
          value: function setContactPoint(contactPoint) {
            this.contactPoint = contactPoint;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getOrganization",
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
          key: "getPerson",
          value: function getPerson() {
            return this.person;
          }
          /**
           * @param { String } person
           */
        },
        {
          key: "setPerson",
          value: function setPerson(person) {
            this.person = person;
          }
          /**
           * @return { module:model/MemberData.TypeEnum }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
          }
          /**
           * @param { module:model/MemberData.TypeEnum } type
           */
        },
        {
          key: "setType",
          value: function setType(type) {
            this.type = type;
          }
          /**
           * Allowed values for the "type" property.
           * @enum { String }
           */
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
              object = new MemberData();
            }

            if (data.hasOwnProperty("contactPoint")) {
              object.contactPoint = _ApiClient.default.convertToType(
                data["contactPoint"],
                object.contactPointType
              );
            }

            if (data.hasOwnProperty("organization")) {
              object.organization = _ApiClient.default.convertToType(
                data["organization"],
                "String"
              );
            }

            if (data.hasOwnProperty("person")) {
              object.person = _ApiClient.default.convertToType(
                data["person"],
                "String"
              );
            }

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return MemberData;
  })();

exports.default = MemberData;

_defineProperty(MemberData, "TypeEnum", {
  /**
   * value: "collaborator"
   * @const
   * @readonly
   */
  collaborator: "collaborator",

  /**
   * value: "contact"
   * @const
   * @readonly
   */
  contact: "contact"
});
