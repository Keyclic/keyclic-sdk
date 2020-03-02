"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InvitationLinksMember = _interopRequireDefault(
  require("./InvitationLinksMember")
);

var _InvitationLinksSelf = _interopRequireDefault(
  require("./InvitationLinksSelf")
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
 * The InvitationLinks model module.
 * @module model/InvitationLinks
 */
var InvitationLinks = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "InvitationLinks".
     * @alias module:model/InvitationLinks
     * @class
    
     */
  function InvitationLinks() {
    _classCallCheck(this, InvitationLinks);

    this.member = null;
    this.self = null;
    this.memberType = _InvitationLinksMember.default;
    this.selfType = _InvitationLinksSelf.default;
  }
  /**
   * Constructs a "InvitationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InvitationLinks } object Optional instance to populate.
   * @return { module:model/InvitationLinks } The populated "InvitationLinks" instance.
   */

  _createClass(
    InvitationLinks,
    [
      {
        key: "getMember",

        /**
         * @return { module:model/InvitationLinksMember }
         */
        value: function getMember() {
          return this.member;
        }
        /**
         * @param { module:model/InvitationLinksMember } member
         */
      },
      {
        key: "setMember",
        value: function setMember(member) {
          this.member = member;
        }
        /**
         * @return { module:model/InvitationLinksSelf }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/InvitationLinksSelf } self
         */
      },
      {
        key: "setSelf",
        value: function setSelf(self) {
          this.self = self;
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
            object = new InvitationLinks();
          }

          if (data.hasOwnProperty("member")) {
            object.member = _ApiClient.default.convertToType(
              data["member"],
              object.memberType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          return object;
        }
      }
    ]
  );

  return InvitationLinks;
})();

exports.default = InvitationLinks;
