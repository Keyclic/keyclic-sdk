"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PlaceLinksContainedInPlace = _interopRequireDefault(
  require("./PlaceLinksContainedInPlace")
);

var _PlaceLinksContainsPlaces = _interopRequireDefault(
  require("./PlaceLinksContainsPlaces")
);

var _PlaceLinksOrganization = _interopRequireDefault(
  require("./PlaceLinksOrganization")
);

var _PlaceLinksSelf = _interopRequireDefault(require("./PlaceLinksSelf"));

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
 * The PlaceLinks model module.
 * @module model/PlaceLinks
 */
var PlaceLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PlaceLinks".
   * @alias module:model/PlaceLinks
   * @class
  
   */
    function PlaceLinks() {
      _classCallCheck(this, PlaceLinks);

      this.self = null;
      this.organization = null;
      this.containedInPlace = null;
      this.containsPlaces = null;
      this.selfType = _PlaceLinksSelf.default;
      this.organizationType = _PlaceLinksOrganization.default;
      this.containedInPlaceType = _PlaceLinksContainedInPlace.default;
      this.containsPlacesType = _PlaceLinksContainsPlaces.default;
    }
    /**
     * Constructs a "PlaceLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceLinks } object Optional instance to populate.
     * @return { module:model/PlaceLinks } The populated "PlaceLinks" instance.
     */

    _createClass(PlaceLinks, null, [
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
            object = new PlaceLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("containedInPlace")) {
            object.containedInPlace = _ApiClient.default.convertToType(
              data["containedInPlace"],
              object.containedInPlaceType
            );
          }

          if (data.hasOwnProperty("containsPlaces")) {
            object.containsPlaces = _ApiClient.default.convertToType(
              data["containsPlaces"],
              object.containsPlacesType
            );
          }

          return object;
        }
      }
    ]);

    return PlaceLinks;
  })();

exports.default = PlaceLinks;
