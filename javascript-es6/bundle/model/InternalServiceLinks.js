"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InternalServiceLinksOrganization = _interopRequireDefault(
  require("./InternalServiceLinksOrganization")
);

var _InternalServiceLinksSelf = _interopRequireDefault(
  require("./InternalServiceLinksSelf")
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
 * The InternalServiceLinks model module.
 * @module model/InternalServiceLinks
 */
var InternalServiceLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "InternalServiceLinks".
   * @alias module:model/InternalServiceLinks
   * @class
  
   */
    function InternalServiceLinks() {
      _classCallCheck(this, InternalServiceLinks);

      this.organization = null;
      this.self = null;
      this.organizationType = _InternalServiceLinksOrganization.default;
      this.selfType = _InternalServiceLinksSelf.default;
    }
    /**
     * Constructs a "InternalServiceLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/InternalServiceLinks } object Optional instance to populate.
     * @return { module:model/InternalServiceLinks } The populated "InternalServiceLinks" instance.
     */

    _createClass(InternalServiceLinks, null, [
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
            object = new InternalServiceLinks();
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          return object;
        }
      }
    ]);

    return InternalServiceLinks;
  })();

exports.default = InternalServiceLinks;
