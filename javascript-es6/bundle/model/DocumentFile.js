"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The DocumentFile model module.
 * @module model/DocumentFile
 */
var DocumentFile =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentFile".
   * @alias module:model/DocumentFile
   * @class
  
   * @param contentType { module:model/DocumentFile.ContentTypeEnum }
  
   */
    function DocumentFile(contentType) {
      _classCallCheck(this, DocumentFile);

      this.contentType = contentType;
      this.name = null;
    }
    /**
     * Constructs a "DocumentFile" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentFile } object Optional instance to populate.
     * @return { module:model/DocumentFile } The populated "DocumentFile" instance.
     */

    _createClass(
      DocumentFile,
      [
        {
          key: "getContentType",

          /**
           * @return { module:model/DocumentFile.ContentTypeEnum }
           */
          value: function getContentType() {
            return this.contentType;
          }
          /**
           * @param { module:model/DocumentFile.ContentTypeEnum } contentType
           */
        },
        {
          key: "setContentType",
          value: function setContentType(contentType) {
            this.contentType = contentType;
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
           * Allowed values for the "contentType" property.
           * @enum { String }
           */
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
              object = new DocumentFile();
            }

            if (data.hasOwnProperty("contentType")) {
              object.contentType = _ApiClient.default.convertToType(
                data["contentType"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return DocumentFile;
  })();

exports.default = DocumentFile;

_defineProperty(DocumentFile, "ContentTypeEnum", {
  /**
   * value: "text/csv"
   * @const
   * @readonly
   */
  "text/csv": "text/csv",

  /**
   * value: "application/msword"
   * @const
   * @readonly
   */
  "application/msword": "application/msword",

  /**
   * value: "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
   * @const
   * @readonly
   */
  "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document",

  /**
   * value: "image/jpeg"
   * @const
   * @readonly
   */
  "image/jpeg": "image/jpeg",

  /**
   * value: "image/jpg"
   * @const
   * @readonly
   */
  "image/jpg": "image/jpg",

  /**
   * value: "application/pdf"
   * @const
   * @readonly
   */
  "application/pdf": "application/pdf",

  /**
   * value: "image/png"
   * @const
   * @readonly
   */
  "image/png": "image/png",

  /**
   * value: "text/plain"
   * @const
   * @readonly
   */
  "text/plain": "text/plain",

  /**
   * value: "application/vnd.ms-excel"
   * @const
   * @readonly
   */
  "application/vnd.ms-excel": "application/vnd.ms-excel",

  /**
   * value: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
   * @const
   * @readonly
   */
  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",

  /**
   * value: "application/zip"
   * @const
   * @readonly
   */
  "application/zip": "application/zip"
});
