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
var PlaceLinks = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PlaceLinks".
     * @alias module:model/PlaceLinks
     * @class
    
     */
  function PlaceLinks() {
    _classCallCheck(this, PlaceLinks);

    this.containedInPlace = null;
    this.containsPlaces = null;
    this.organization = null;
    this.self = null;
    this.containedInPlaceType = _PlaceLinksContainedInPlace.default;
    this.containsPlacesType = _PlaceLinksContainsPlaces.default;
    this.organizationType = _PlaceLinksOrganization.default;
    this.selfType = _PlaceLinksSelf.default;
  }
  /**
   * Constructs a "PlaceLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceLinks } object Optional instance to populate.
   * @return { module:model/PlaceLinks } The populated "PlaceLinks" instance.
   */

  _createClass(
    PlaceLinks,
    [
      {
        key: "getContainedInPlace",

        /**
         * @return { module:model/PlaceLinksContainedInPlace }
         */
        value: function getContainedInPlace() {
          return this.containedInPlace;
        }
        /**
         * @param { module:model/PlaceLinksContainedInPlace } containedInPlace
         */
      },
      {
        key: "setContainedInPlace",
        value: function setContainedInPlace(containedInPlace) {
          this.containedInPlace = containedInPlace;
        }
        /**
         * @return { module:model/PlaceLinksContainsPlaces }
         */
      },
      {
        key: "getContainsPlaces",
        value: function getContainsPlaces() {
          return this.containsPlaces;
        }
        /**
         * @param { module:model/PlaceLinksContainsPlaces } containsPlaces
         */
      },
      {
        key: "setContainsPlaces",
        value: function setContainsPlaces(containsPlaces) {
          this.containsPlaces = containsPlaces;
        }
        /**
         * @return { module:model/PlaceLinksOrganization }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { module:model/PlaceLinksOrganization } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
        }
        /**
         * @return { module:model/PlaceLinksSelf }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/PlaceLinksSelf } self
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
            object = new PlaceLinks();
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

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
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

  return PlaceLinks;
})();

exports.default = PlaceLinks;
