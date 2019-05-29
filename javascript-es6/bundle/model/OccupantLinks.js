"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OccupantLinksPerson = _interopRequireDefault(
  require("./OccupantLinksPerson")
);

var _OccupantLinksPlace = _interopRequireDefault(
  require("./OccupantLinksPlace")
);

var _OccupantLinksSelf = _interopRequireDefault(require("./OccupantLinksSelf"));

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
 * The OccupantLinks model module.
 * @module model/OccupantLinks
 */
var OccupantLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantLinks".
   * @alias module:model/OccupantLinks
   * @class
  
   */
    function OccupantLinks() {
      _classCallCheck(this, OccupantLinks);

      this.self = null;
      this.person = null;
      this.place = null;
      this.selfType = _OccupantLinksSelf.default;
      this.personType = _OccupantLinksPerson.default;
      this.placeType = _OccupantLinksPlace.default;
    }
    /**
     * Constructs a "OccupantLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantLinks } object Optional instance to populate.
     * @return { module:model/OccupantLinks } The populated "OccupantLinks" instance.
     */

    _createClass(OccupantLinks, null, [
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
            object = new OccupantLinks();
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

    return OccupantLinks;
  })();

exports.default = OccupantLinks;
