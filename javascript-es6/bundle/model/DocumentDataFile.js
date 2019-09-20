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

/**
 * The DocumentDataFile model module.
 * @module model/DocumentDataFile
 */
var DocumentDataFile =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentDataFile".
   * @alias module:model/DocumentDataFile
   * @class
  
   */
    function DocumentDataFile() {
      _classCallCheck(this, DocumentDataFile);

      this.content = null;
      this.contentType = null;
      this.name = null;
    }
    /**
     * Constructs a "DocumentDataFile" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentDataFile } object Optional instance to populate.
     * @return { module:model/DocumentDataFile } The populated "DocumentDataFile" instance.
     */

    _createClass(
      DocumentDataFile,
      [
        {
          key: "getContent",

          /**
           * @return { String }
           */
          value: function getContent() {
            return this.content;
          }
          /**
           * @param { String } content
           */
        },
        {
          key: "setContent",
          value: function setContent(content) {
            this.content = content;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getContentType",
          value: function getContentType() {
            return this.contentType;
          }
          /**
           * @param { String } contentType
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
              object = new DocumentDataFile();
            }

            if (data.hasOwnProperty("content")) {
              object.content = _ApiClient.default.convertToType(
                data["content"],
                "String"
              );
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

    return DocumentDataFile;
  })();

exports.default = DocumentDataFile;
