"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentLinksCreatedBy = _interopRequireDefault(
  require("./DocumentLinksCreatedBy")
);

var _DocumentLinksFile = _interopRequireDefault(require("./DocumentLinksFile"));

var _DocumentLinksSelf = _interopRequireDefault(require("./DocumentLinksSelf"));

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
 * The DocumentLinks model module.
 * @module model/DocumentLinks
 */
var DocumentLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentLinks".
   * @alias module:model/DocumentLinks
   * @class
  
   */
    function DocumentLinks() {
      _classCallCheck(this, DocumentLinks);

      this.self = null;
      this.file = null;
      this.createdBy = null;
      this.selfType = _DocumentLinksSelf.default;
      this.fileType = _DocumentLinksFile.default;
      this.createdByType = _DocumentLinksCreatedBy.default;
    }
    /**
     * Constructs a "DocumentLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentLinks } object Optional instance to populate.
     * @return { module:model/DocumentLinks } The populated "DocumentLinks" instance.
     */

    _createClass(DocumentLinks, null, [
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
            object = new DocumentLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("file")) {
            object.file = _ApiClient.default.convertToType(
              data["file"],
              object.fileType
            );
          }

          if (data.hasOwnProperty("createdBy")) {
            object.createdBy = _ApiClient.default.convertToType(
              data["createdBy"],
              object.createdByType
            );
          }

          return object;
        }
      }
    ]);

    return DocumentLinks;
  })();

exports.default = DocumentLinks;
