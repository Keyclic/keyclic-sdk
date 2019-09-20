"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _MemberEmbedded = _interopRequireDefault(require("./MemberEmbedded"));

var _MemberLinks = _interopRequireDefault(require("./MemberLinks"));

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
 * The Member model module.
 * @module model/Member
 */
var Member =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Member".
   * @alias module:model/Member
   * @class
  
   */
    function Member() {
      _classCallCheck(this, Member);

      this.embedded = null;
      this.links = null;
      this.createdAt = null;
      this.id = null;
      this.roles = [];
      this.type = null;
      this.updatedAt = null;
      this.embeddedType = _MemberEmbedded.default;
      this.linksType = _MemberLinks.default;
    }
    /**
     * Constructs a "Member" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Member } object Optional instance to populate.
     * @return { module:model/Member } The populated "Member" instance.
     */

    _createClass(
      Member,
      [
        {
          key: "getEmbedded",

          /**
           * @return { module:model/MemberEmbedded }
           */
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/MemberEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
          }
          /**
           * @return { module:model/MemberLinks }
           */
        },
        {
          key: "getLinks",
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/MemberLinks } links
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
          key: "getId",
          value: function getId() {
            return this.id;
          }
          /**
           * @return { Array.<String> }
           */
        },
        {
          key: "getRoles",
          value: function getRoles() {
            return this.roles;
          }
          /**
           * @param { Array.<String> } roles
           */
        },
        {
          key: "setRoles",
          value: function setRoles(roles) {
            this.roles = roles;
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
              object = new Member();
            }

            if (data.hasOwnProperty("_embedded")) {
              object.embedded = _ApiClient.default.convertToType(
                data["_embedded"],
                object.embeddedType
              );
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

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("roles")) {
              object.roles = _ApiClient.default.convertToType(
                data["roles"],
                "['String']"
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

    return Member;
  })();

exports.default = Member;
