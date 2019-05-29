"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentDataFile = _interopRequireDefault(require("./DocumentDataFile"));

var _DocumentDataPermission = _interopRequireDefault(
  require("./DocumentDataPermission")
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
 * The DocumentData model module.
 * @module model/DocumentData
 */
var DocumentData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentData".
   * @alias module:model/DocumentData
   * @class
  
   * @param file { module:model/DocumentDataFile }
  
   * @param permission { module:model/DocumentDataPermission }
  
   */
    function DocumentData(file, permission) {
      _classCallCheck(this, DocumentData);

      this.file = file;
      this.permission = permission;
      this.fileType = _DocumentDataFile.default;
      this.permissionType = _DocumentDataPermission.default;
    }
    /**
     * Constructs a "DocumentData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentData } object Optional instance to populate.
     * @return { module:model/DocumentData } The populated "DocumentData" instance.
     */

    _createClass(DocumentData, null, [
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
            object = new DocumentData();
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
    ]);

    return DocumentData;
  })();

exports.default = DocumentData;
