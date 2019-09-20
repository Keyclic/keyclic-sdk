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
 * The DocumentPatchFile model module.
 * @module model/DocumentPatchFile
 */
var DocumentPatchFile =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentPatchFile".
   * @alias module:model/DocumentPatchFile
   * @class
  
   */
    function DocumentPatchFile() {
      _classCallCheck(this, DocumentPatchFile);

      this.name = null;
    }
    /**
     * Constructs a "DocumentPatchFile" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentPatchFile } object Optional instance to populate.
     * @return { module:model/DocumentPatchFile } The populated "DocumentPatchFile" instance.
     */

    _createClass(
      DocumentPatchFile,
      [
        {
          key: "getName",

          /**
           * @return { String }
           */
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
              object = new DocumentPatchFile();
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

    return DocumentPatchFile;
  })();

exports.default = DocumentPatchFile;
