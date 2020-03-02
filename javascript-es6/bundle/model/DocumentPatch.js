"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentPatchFile = _interopRequireDefault(require("./DocumentPatchFile"));

var _DocumentPatchPermission = _interopRequireDefault(
  require("./DocumentPatchPermission")
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
 * The DocumentPatch model module.
 * @module model/DocumentPatch
 */
var DocumentPatch = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DocumentPatch".
   * @alias module:model/DocumentPatch
   * @class
  
   */
  function DocumentPatch() {
    _classCallCheck(this, DocumentPatch);

    this.file = null;
    this.permission = null;
    this.fileType = _DocumentPatchFile.default;
    this.permissionType = _DocumentPatchPermission.default;
  }
  /**
   * Constructs a "DocumentPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DocumentPatch } object Optional instance to populate.
   * @return { module:model/DocumentPatch } The populated "DocumentPatch" instance.
   */

  _createClass(
    DocumentPatch,
    [
      {
        key: "getFile",

        /**
         * @return { module:model/DocumentPatchFile }
         */
        value: function getFile() {
          return this.file;
        }
        /**
         * @param { module:model/DocumentPatchFile } file
         */
      },
      {
        key: "setFile",
        value: function setFile(file) {
          this.file = file;
        }
        /**
         * @return { module:model/DocumentPatchPermission }
         */
      },
      {
        key: "getPermission",
        value: function getPermission() {
          return this.permission;
        }
        /**
         * @param { module:model/DocumentPatchPermission } permission
         */
      },
      {
        key: "setPermission",
        value: function setPermission(permission) {
          this.permission = permission;
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
            object = new DocumentPatch();
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

          return object;
        }
      }
    ]
  );

  return DocumentPatch;
})();

exports.default = DocumentPatch;
