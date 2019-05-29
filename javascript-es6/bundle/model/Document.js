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
var Document =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Document".
   * @alias module:model/Document
   * @class
  
   * @param file { module:model/DocumentFile }
  
   * @param permission { module:model/DocumentPermission }
  
   * @param id { String }
  
   * @param createdAt { Date }
  
   */
    function Document(file, permission, id, createdAt) {
      _classCallCheck(this, Document);

      this.file = file;
      this.permission = permission;
      this.id = id;
      this.createdAt = createdAt;
      this.type = null;
      this.links = null;
      this.fileType = _DocumentFile.default;
      this.permissionType = _DocumentPermission.default;
      this.linksType = _DocumentLinks.default;
    }
    /**
     * Constructs a "Document" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Document } object Optional instance to populate.
     * @return { module:model/Document } The populated "Document" instance.
     */

    _createClass(Document, null, [
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

          if (data.hasOwnProperty("file")) {
            object.file = _ApiClient.default.convertToType(
              data["file"],
              object.fileType
            );
          }

          if (data.hasOwnProperty("permission")) {
            object.permission = _ApiClient.default.convertToType(
              data["permission"],
              object.permissionType
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
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

          return object;
        }
      }
    ]);

    return Document;
  })();

exports.default = Document;
