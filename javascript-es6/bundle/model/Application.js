"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ApplicationLinks = _interopRequireDefault(require("./ApplicationLinks"));

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
 * The Application model module.
 * @module model/Application
 */
var Application =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Application".
   * @alias module:model/Application
   * @class
  
   * @param name { String }
  
   * @param token { String }
  
   * @param id { String }
  
   */
    function Application(name, token, id) {
      _classCallCheck(this, Application);

      this.name = name;
      this.token = token;
      this.version = null;
      this.id = id;
      this.type = null;
      this.links = null;
      this.linksType = _ApplicationLinks.default;
    }
    /**
     * Constructs a "Application" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Application } object Optional instance to populate.
     * @return { module:model/Application } The populated "Application" instance.
     */

    _createClass(Application, null, [
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
            object = new Application();
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("token")) {
            object.token = _ApiClient.default.convertToType(
              data["token"],
              "String"
            );
          }

          if (data.hasOwnProperty("version")) {
            object.version = _ApiClient.default.convertToType(
              data["version"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
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

    return Application;
  })();

exports.default = Application;
