"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PublicationLinksAuthor = _interopRequireDefault(
  require("./PublicationLinksAuthor")
);

var _PublicationLinksOrganization = _interopRequireDefault(
  require("./PublicationLinksOrganization")
);

var _PublicationLinksPlace = _interopRequireDefault(
  require("./PublicationLinksPlace")
);

var _PublicationLinksSelf = _interopRequireDefault(
  require("./PublicationLinksSelf")
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
 * The PublicationLinks model module.
 * @module model/PublicationLinks
 */
var PublicationLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PublicationLinks".
   * @alias module:model/PublicationLinks
   * @class
  
   */
    function PublicationLinks() {
      _classCallCheck(this, PublicationLinks);

      this.self = null;
      this.author = null;
      this.organization = null;
      this.place = null;
      this.selfType = _PublicationLinksSelf.default;
      this.authorType = _PublicationLinksAuthor.default;
      this.organizationType = _PublicationLinksOrganization.default;
      this.placeType = _PublicationLinksPlace.default;
    }
    /**
     * Constructs a "PublicationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PublicationLinks } object Optional instance to populate.
     * @return { module:model/PublicationLinks } The populated "PublicationLinks" instance.
     */

    _createClass(PublicationLinks, null, [
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
            object = new PublicationLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("author")) {
            object.author = _ApiClient.default.convertToType(
              data["author"],
              object.authorType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              object.placeType
            );
          }

          return object;
        }
      }
    ]);

    return PublicationLinks;
  })();

exports.default = PublicationLinks;
