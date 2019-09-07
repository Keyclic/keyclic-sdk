"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ExternalServiceContactPoint = _interopRequireDefault(
  require("./ExternalServiceContactPoint")
);

var _InternalServiceLinks = _interopRequireDefault(
  require("./InternalServiceLinks")
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
 * The InternalService model module.
 * @module model/InternalService
 */
var InternalService =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "InternalService".
   * @alias module:model/InternalService
   * @class
  
   * @param name { String }
  
   */
    function InternalService(name) {
      _classCallCheck(this, InternalService);

      this.links = null;
      this.contactPoint = null;
      this.createdAt = null;
      this.description = null;
      this.id = null;
      this.name = name;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _InternalServiceLinks.default;
      this.contactPointType = _ExternalServiceContactPoint.default;
    }
    /**
     * Constructs a "InternalService" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/InternalService } object Optional instance to populate.
     * @return { module:model/InternalService } The populated "InternalService" instance.
     */

    _createClass(InternalService, null, [
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
            object = new InternalService();
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("contactPoint")) {
            object.contactPoint = _ApiClient.default.convertToType(
              data["contactPoint"],
              object.contactPointType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]);

    return InternalService;
  })();

exports.default = InternalService;
