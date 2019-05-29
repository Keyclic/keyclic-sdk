"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

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
var Publication =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Publication".
   * @alias module:model/Publication
   * @class
  
   * @param message { String }
  
   * @param read { Number }
  
   * @param title { String }
  
   * @param id { String }
  
   * @param createdAt { Date }
  
   */
    function Publication(message, read, title, id, createdAt) {
      _classCallCheck(this, Publication);

      this.message = message;
      this.read = read;
      this.title = title;
      this.id = id;
      this.createdAt = createdAt;
      this.type = null;
      this.links = null;
      this.linksType = _PublicationLinks.default;
    }
    /**
     * Constructs a "Publication" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Publication } object Optional instance to populate.
     * @return { module:model/Publication } The populated "Publication" instance.
     */

    _createClass(Publication, null, [
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

    return Publication;
  })();

exports.default = Publication;
