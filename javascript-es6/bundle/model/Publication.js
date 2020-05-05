"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PublicationEmbedded = _interopRequireDefault(
  require("./PublicationEmbedded")
);

var _PublicationLinks = _interopRequireDefault(require("./PublicationLinks"));

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
 * The Publication model module.
 * @module model/Publication
 */
var Publication = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Publication".
   * @alias module:model/Publication
   * @class
  
   * @param message { String }
  
   * @param read { Number }
  
   * @param title { String }
  
   */
  function Publication(message, read, title) {
    _classCallCheck(this, Publication);

    this.embedded = null;
    this.links = null;
    this.createdAt = null;
    this.id = null;
    this.message = message;
    this.read = read;
    this.title = title;
    this.type = null;
    this.updatedAt = null;
    this.embeddedType = _PublicationEmbedded.default;
    this.linksType = _PublicationLinks.default;
  }
  /**
   * Constructs a "Publication" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Publication } object Optional instance to populate.
   * @return { module:model/Publication } The populated "Publication" instance.
   */

  _createClass(
    Publication,
    [
      {
        key: "getEmbedded",

        /**
         * @return { module:model/PublicationEmbedded }
         */
        value: function getEmbedded() {
          return this.embedded;
        }
        /**
         * @param { module:model/PublicationEmbedded } embedded
         */
      },
      {
        key: "setEmbedded",
        value: function setEmbedded(embedded) {
          this.embedded = embedded;
        }
        /**
         * @return { module:model/PublicationLinks }
         */
      },
      {
        key: "getLinks",
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/PublicationLinks } links
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
         * @return { String }
         */
      },
      {
        key: "getMessage",
        value: function getMessage() {
          return this.message;
        }
        /**
         * @param { String } message
         */
      },
      {
        key: "setMessage",
        value: function setMessage(message) {
          this.message = message;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getRead",
        value: function getRead() {
          return this.read;
        }
        /**
         * @param { Number } read
         */
      },
      {
        key: "setRead",
        value: function setRead(read) {
          this.read = read;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getTitle",
        value: function getTitle() {
          return this.title;
        }
        /**
         * @param { String } title
         */
      },
      {
        key: "setTitle",
        value: function setTitle(title) {
          this.title = title;
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
            object = new Publication();
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
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("message")) {
            object.message = _ApiClient.default.convertToType(
              data["message"],
              "String"
            );
          }

          if (data.hasOwnProperty("read")) {
            object.read = _ApiClient.default.convertToType(
              data["read"],
              "Number"
            );
          }

          if (data.hasOwnProperty("title")) {
            object.title = _ApiClient.default.convertToType(
              data["title"],
              "String"
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

  return Publication;
})();

exports.default = Publication;
