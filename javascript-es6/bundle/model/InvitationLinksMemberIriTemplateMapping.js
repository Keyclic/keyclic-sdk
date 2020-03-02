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
 * The InvitationLinksMemberIriTemplateMapping model module.
 * @module model/InvitationLinksMemberIriTemplateMapping
 */
var InvitationLinksMemberIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "InvitationLinksMemberIriTemplateMapping".
   * @alias module:model/InvitationLinksMemberIriTemplateMapping
   * @class
  
   */
  function InvitationLinksMemberIriTemplateMapping() {
    _classCallCheck(this, InvitationLinksMemberIriTemplateMapping);

    this.member = null;
  }
  /**
   * Constructs a "InvitationLinksMemberIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InvitationLinksMemberIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/InvitationLinksMemberIriTemplateMapping } The populated "InvitationLinksMemberIriTemplateMapping" instance.
   */

  _createClass(
    InvitationLinksMemberIriTemplateMapping,
    [
      {
        key: "getMember",

        /**
         * @return { String }
         */
        value: function getMember() {
          return this.member;
        }
        /**
         * @param { String } member
         */
      },
      {
        key: "setMember",
        value: function setMember(member) {
          this.member = member;
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
            object = new InvitationLinksMemberIriTemplateMapping();
          }

          if (data.hasOwnProperty("member")) {
            object.member = _ApiClient.default.convertToType(
              data["member"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return InvitationLinksMemberIriTemplateMapping;
})();

exports.default = InvitationLinksMemberIriTemplateMapping;
