"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentFile = _interopRequireDefault(require("./DocumentFile"));

var _DocumentLinks = _interopRequireDefault(require("./DocumentLinks"));

var _DocumentPermission = _interopRequireDefault(
  require("./DocumentPermission")
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
 * The Document model module.
 * @module model/Document
 */
var Document = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Document".
   * @alias module:model/Document
   * @class
  
   */
  function Document() {
    _classCallCheck(this, Document);

    this.links = null;
    this.createdAt = null;
    this.file = null;
    this.id = null;
    this.permission = null;
    this.type = null;
    this.updatedAt = null;
    this.linksType = _DocumentLinks.default;
    this.fileType = _DocumentFile.default;
    this.permissionType = _DocumentPermission.default;
  }
  /**
   * Constructs a "Document" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Document } object Optional instance to populate.
   * @return { module:model/Document } The populated "Document" instance.
   */

  _createClass(
    Document,
    [
      {
        key: "getLinks",

        /**
         * @return { module:model/DocumentLinks }
         */
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/DocumentLinks } links
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
         * @return { module:model/DocumentFile }
         */
      },
      {
        key: "getFile",
        value: function getFile() {
          return this.file;
        }
        /**
         * @param { module:model/DocumentFile } file
         */
      },
      {
        key: "setFile",
        value: function setFile(file) {
          this.file = file;
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
         * @return { module:model/DocumentPermission }
         */
      },
      {
        key: "getPermission",
        value: function getPermission() {
          return this.permission;
        }
        /**
         * @param { module:model/DocumentPermission } permission
         */
      },
      {
        key: "setPermission",
        value: function setPermission(permission) {
          this.permission = permission;
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
            object = new Document();
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

          if (data.hasOwnProperty("file")) {
            object.file = _ApiClient.default.convertToType(
              data["file"],
              object.fileType
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("permission")) {
            object.permission = _ApiClient.default.convertToType(
              data["permission"],
              object.permissionType
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

  return Document;
})();

exports.default = Document;
