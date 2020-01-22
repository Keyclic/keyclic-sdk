"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PlaceEmbedded = _interopRequireDefault(require("./PlaceEmbedded"));

var _PlaceLinks = _interopRequireDefault(require("./PlaceLinks"));

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
 * The ReportPlace model module.
 * @module model/ReportPlace
 */
var ReportPlace =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportPlace".
   * @alias module:model/ReportPlace
   * @class
  
   */
    function ReportPlace() {
      _classCallCheck(this, ReportPlace);

      this.description = null;
      this.name = null;
      this.type = null;
      this.links = null;
      this.embedded = null;
      this.linksType = _PlaceLinks.default;
      this.embeddedType = _PlaceEmbedded.default;
    }
    /**
     * Constructs a "ReportPlace" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportPlace } object Optional instance to populate.
     * @return { module:model/ReportPlace } The populated "ReportPlace" instance.
     */

    _createClass(
      ReportPlace,
      [
        {
          key: "getDescription",

          /**
           * @return { String }
           */
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
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
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
           * @return { module:model/PlaceEmbedded }
           */
        },
        {
          key: "getEmbedded",
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
              object = new ReportPlace();
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            if (data.hasOwnProperty("_links")) {
              object.links = _ApiClient.default.convertToType(
                data["_links"],
                object.linksType
              );
            }

            if (data.hasOwnProperty("_embedded")) {
              object.embedded = _ApiClient.default.convertToType(
                data["_embedded"],
                object.embeddedType
              );
            }

            return object;
          }
        }
      ]
    );

    return ReportPlace;
  })();

exports.default = ReportPlace;
