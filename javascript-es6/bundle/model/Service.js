"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ServiceContactPoint = _interopRequireDefault(
  require("./ServiceContactPoint")
);

var _ServiceLinks = _interopRequireDefault(require("./ServiceLinks"));

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
 * The Service model module.
 * @module model/Service
 */
var Service =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Service".
   * @alias module:model/Service
   * @class
  
   * @param contactPoint { module:model/ServiceContactPoint }
  
   * @param name { String }
  
   * @param id { String }
  
   */
    function Service(contactPoint, name, id) {
      _classCallCheck(this, Service);

      this.contactPoint = contactPoint;
      this.description = null;
      this.name = name;
      this.id = id;
      this.type = null;
      this.links = null;
      this.contactPointType = _ServiceContactPoint.default;
      this.linksType = _ServiceLinks.default;
    }
    /**
     * Constructs a "Service" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Service } object Optional instance to populate.
     * @return { module:model/Service } The populated "Service" instance.
     */

    _createClass(Service, null, [
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
            object = new Service();
          }

          if (data.hasOwnProperty("contactPoint")) {
            object.contactPoint = _ApiClient.default.convertToType(
              data["contactPoint"],
              object.contactPointType
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
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

    return Service;
  })();

exports.default = Service;
