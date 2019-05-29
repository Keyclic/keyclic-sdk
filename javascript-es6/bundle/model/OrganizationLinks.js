"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationLinksBusinessActivity = _interopRequireDefault(
  require("./OrganizationLinksBusinessActivity")
);

var _OrganizationLinksLogo = _interopRequireDefault(
  require("./OrganizationLinksLogo")
);

var _OrganizationLinksSelf = _interopRequireDefault(
  require("./OrganizationLinksSelf")
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
 * The OrganizationLinks model module.
 * @module model/OrganizationLinks
 */
var OrganizationLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationLinks".
   * @alias module:model/OrganizationLinks
   * @class
  
   */
    function OrganizationLinks() {
      _classCallCheck(this, OrganizationLinks);

      this.self = null;
      this.businessActivity = null;
      this.logo = null;
      this.selfType = _OrganizationLinksSelf.default;
      this.businessActivityType = _OrganizationLinksBusinessActivity.default;
      this.logoType = _OrganizationLinksLogo.default;
    }
    /**
     * Constructs a "OrganizationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationLinks } object Optional instance to populate.
     * @return { module:model/OrganizationLinks } The populated "OrganizationLinks" instance.
     */

    _createClass(OrganizationLinks, null, [
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
            object = new OrganizationLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("businessActivity")) {
            object.businessActivity = _ApiClient.default.convertToType(
              data["businessActivity"],
              object.businessActivityType
            );
          }

          if (data.hasOwnProperty("logo")) {
            object.logo = _ApiClient.default.convertToType(
              data["logo"],
              object.logoType
            );
          }

          return object;
        }
      }
    ]);

    return OrganizationLinks;
  })();

exports.default = OrganizationLinks;
