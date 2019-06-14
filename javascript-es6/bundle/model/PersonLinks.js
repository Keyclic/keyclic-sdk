"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PersonLinksImage = _interopRequireDefault(require("./PersonLinksImage"));

var _PersonLinksMemberOf = _interopRequireDefault(
  require("./PersonLinksMemberOf")
);

var _PersonLinksSelf = _interopRequireDefault(require("./PersonLinksSelf"));

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
 * The PersonLinks model module.
 * @module model/PersonLinks
 */
var PersonLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonLinks".
   * @alias module:model/PersonLinks
   * @class
  
   */
    function PersonLinks() {
      _classCallCheck(this, PersonLinks);

      this.self = null;
      this.image = null;
      this.memberOf = null;
      this.selfType = _PersonLinksSelf.default;
      this.imageType = _PersonLinksImage.default;
      this.memberOfType = _PersonLinksMemberOf.default;
    }
    /**
     * Constructs a "PersonLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonLinks } object Optional instance to populate.
     * @return { module:model/PersonLinks } The populated "PersonLinks" instance.
     */

    _createClass(PersonLinks, null, [
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
            object = new PersonLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("image")) {
            object.image = _ApiClient.default.convertToType(
              data["image"],
              object.imageType
            );
          }

          if (data.hasOwnProperty("memberOf")) {
            object.memberOf = _ApiClient.default.convertToType(
              data["memberOf"],
              object.memberOfType
            );
          }

          return object;
        }
      }
    ]);

    return PersonLinks;
  })();

exports.default = PersonLinks;