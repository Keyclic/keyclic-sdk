"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InvitationLinks = _interopRequireDefault(require("./InvitationLinks"));

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
 * The Invitation model module.
 * @module model/Invitation
 */
var Invitation = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Invitation".
   * @alias module:model/Invitation
   * @class
  
   */
  function Invitation() {
    _classCallCheck(this, Invitation);

    this.links = null;
    this.createdAt = null;
    this.expiredAt = null;
    this.id = null;
    this.type = null;
    this.updatedAt = null;
    this.linksType = _InvitationLinks.default;
  }
  /**
   * Constructs a "Invitation" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Invitation } object Optional instance to populate.
   * @return { module:model/Invitation } The populated "Invitation" instance.
   */

  _createClass(
    Invitation,
    [
      {
        key: "getLinks",

        /**
         * @return { module:model/InvitationLinks }
         */
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/InvitationLinks } links
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
         * @return { Date }
         */
      },
      {
        key: "getExpiredAt",
        value: function getExpiredAt() {
          return this.expiredAt;
        }
        /**
         * @param { Date } expiredAt
         */
      },
      {
        key: "setExpiredAt",
        value: function setExpiredAt(expiredAt) {
          this.expiredAt = expiredAt;
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
            object = new Invitation();
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

          if (data.hasOwnProperty("expiredAt")) {
            object.expiredAt = _ApiClient.default.convertToType(
              data["expiredAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
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

  return Invitation;
})();

exports.default = Invitation;
