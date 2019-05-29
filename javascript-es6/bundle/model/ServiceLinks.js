"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ServiceLinksOrganization = _interopRequireDefault(
  require("./ServiceLinksOrganization")
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
 * The ServiceLinks model module.
 * @module model/ServiceLinks
 */
var ServiceLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ServiceLinks".
   * @alias module:model/ServiceLinks
   * @class
  
   */
    function ServiceLinks() {
      _classCallCheck(this, ServiceLinks);

      this.organization = null;
      this.organizationType = _ServiceLinksOrganization.default;
    }
    /**
     * Constructs a "ServiceLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ServiceLinks } object Optional instance to populate.
     * @return { module:model/ServiceLinks } The populated "ServiceLinks" instance.
     */

    _createClass(ServiceLinks, null, [
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
            object = new ServiceLinks();
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          return object;
        }
      }
    ]);

    return ServiceLinks;
  })();

exports.default = ServiceLinks;
