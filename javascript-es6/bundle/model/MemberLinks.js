"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _MemberLinksOrganization = _interopRequireDefault(
  require("./MemberLinksOrganization")
);

var _MemberLinksPerson = _interopRequireDefault(require("./MemberLinksPerson"));

var _MemberLinksSelf = _interopRequireDefault(require("./MemberLinksSelf"));

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
 * The MemberLinks model module.
 * @module model/MemberLinks
 */
var MemberLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "MemberLinks".
   * @alias module:model/MemberLinks
   * @class
  
   */
    function MemberLinks() {
      _classCallCheck(this, MemberLinks);

      this.self = null;
      this.person = null;
      this.organization = null;
      this.selfType = _MemberLinksSelf.default;
      this.personType = _MemberLinksPerson.default;
      this.organizationType = _MemberLinksOrganization.default;
    }
    /**
     * Constructs a "MemberLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/MemberLinks } object Optional instance to populate.
     * @return { module:model/MemberLinks } The populated "MemberLinks" instance.
     */

    _createClass(MemberLinks, null, [
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
            object = new MemberLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              object.personType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          return object;
        }
      }
    ]);

    return MemberLinks;
  })();

exports.default = MemberLinks;
