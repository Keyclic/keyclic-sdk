"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Invitation = _interopRequireDefault(require("./Invitation"));

var _Organization = _interopRequireDefault(require("./Organization"));

var _Person = _interopRequireDefault(require("./Person"));

var _Role = _interopRequireDefault(require("./Role"));

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
 * The MemberEmbedded model module.
 * @module model/MemberEmbedded
 */
var MemberEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "MemberEmbedded".
   * @alias module:model/MemberEmbedded
   * @class
  
   */
  function MemberEmbedded() {
    _classCallCheck(this, MemberEmbedded);

    this.availableRoles = [];
    this.invitation = null;
    this.organization = null;
    this.person = null;
    this.roles = [];
    this.invitationType = _Invitation.default;
    this.organizationType = _Organization.default;
    this.personType = _Person.default;
    this.rolesType = _Role.default;
  }
  /**
   * Constructs a "MemberEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberEmbedded } object Optional instance to populate.
   * @return { module:model/MemberEmbedded } The populated "MemberEmbedded" instance.
   */

  _createClass(
    MemberEmbedded,
    [
      {
        key: "getAvailableRoles",

        /**
         * @return { Array.<String> }
         */
        value: function getAvailableRoles() {
          return this.availableRoles;
        }
        /**
         * @param { Array.<String> } availableRoles
         */
      },
      {
        key: "setAvailableRoles",
        value: function setAvailableRoles(availableRoles) {
          this.availableRoles = availableRoles;
        }
        /**
         * @return { module:model/Invitation }
         */
      },
      {
        key: "getInvitation",
        value: function getInvitation() {
          return this.invitation;
        }
        /**
         * @param { module:model/Invitation } invitation
         */
      },
      {
        key: "setInvitation",
        value: function setInvitation(invitation) {
          this.invitation = invitation;
        }
        /**
         * @return { module:model/Organization }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { module:model/Organization } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
        }
        /**
         * @return { module:model/Person }
         */
      },
      {
        key: "getPerson",
        value: function getPerson() {
          return this.person;
        }
        /**
         * @param { module:model/Person } person
         */
      },
      {
        key: "setPerson",
        value: function setPerson(person) {
          this.person = person;
        }
        /**
         * @return { Array.<module:model/Role> }
         */
      },
      {
        key: "getRoles",
        value: function getRoles() {
          return this.roles;
        }
        /**
         * @param { Array.<module:model/Role> } roles
         */
      },
      {
        key: "setRoles",
        value: function setRoles(roles) {
          this.roles = roles;
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
            object = new MemberEmbedded();
          }

          if (data.hasOwnProperty("availableRoles")) {
            object.availableRoles = _ApiClient.default.convertToType(
              data["availableRoles"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("invitation")) {
            object.invitation = _ApiClient.default.convertToType(
              data["invitation"],
              object.invitationType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              object.personType
            );
          }

          if (data.hasOwnProperty("roles")) {
            object.roles = _ApiClient.default.convertToType(data["roles"], [
              object.rolesType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return MemberEmbedded;
})();

exports.default = MemberEmbedded;
