"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _GeoShape = _interopRequireDefault(require("./GeoShape"));

var _PlaceEmbedded = _interopRequireDefault(require("./PlaceEmbedded"));

var _PlaceLinks = _interopRequireDefault(require("./PlaceLinks"));

var _Preferences = _interopRequireDefault(require("./Preferences"));

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
 * The Place model module.
 * @module model/Place
 */
var Place =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Place".
   * @alias module:model/Place
   * @class
  
   * @param name { String }
  
   */
    function Place(name) {
      _classCallCheck(this, Place);

      this.embedded = null;
      this.links = null;
      this.branchCode = null;
      this.createdAt = null;
      this.description = null;
      this.geo = null;
      this.id = null;
      this.name = name;
      this.preferences = null;
      this.type = null;
      this.updatedAt = null;
      this.embeddedType = _PlaceEmbedded.default;
      this.linksType = _PlaceLinks.default;
      this.geoType = _GeoShape.default;
      this.preferencesType = _Preferences.default;
    }
    /**
     * Constructs a "Place" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Place } object Optional instance to populate.
     * @return { module:model/Place } The populated "Place" instance.
     */

    _createClass(
      Place,
      [
        {
          key: "getEmbedded",

          /**
           * @return { module:model/PlaceEmbedded }
           */
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/PlaceEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
          }
          /**
           * @return { module:model/PlaceLinks }
           */
        },
        {
          key: "getLinks",
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/PlaceLinks } links
           */
        },
        {
          key: "setLinks",
          value: function setLinks(links) {
            this.links = links;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getBranchCode",
          value: function getBranchCode() {
            return this.branchCode;
          }
          /**
           * @param { String } branchCode
           */
        },
        {
          key: "setBranchCode",
          value: function setBranchCode(branchCode) {
            this.branchCode = branchCode;
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
          key: "getDescription",
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { module:model/GeoShape }
           */
        },
        {
          key: "getGeo",
          value: function getGeo() {
            return this.geo;
          }
          /**
           * @param { module:model/GeoShape } geo
           */
        },
        {
          key: "setGeo",
          value: function setGeo(geo) {
            this.geo = geo;
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
          key: "getName",
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { module:model/Preferences }
           */
        },
        {
          key: "getPreferences",
          value: function getPreferences() {
            return this.preferences;
          }
          /**
           * @param { module:model/Preferences } preferences
           */
        },
        {
          key: "setPreferences",
          value: function setPreferences(preferences) {
            this.preferences = preferences;
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
              object = new Place();
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

            if (data.hasOwnProperty("branchCode")) {
              object.branchCode = _ApiClient.default.convertToType(
                data["branchCode"],
                "String"
              );
            }

            if (data.hasOwnProperty("createdAt")) {
              object.createdAt = _ApiClient.default.convertToType(
                data["createdAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("geo")) {
              object.geo = _ApiClient.default.convertToType(
                data["geo"],
                object.geoType
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("preferences")) {
              object.preferences = _ApiClient.default.convertToType(
                data["preferences"],
                object.preferencesType
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

    return Place;
  })();

exports.default = Place;
