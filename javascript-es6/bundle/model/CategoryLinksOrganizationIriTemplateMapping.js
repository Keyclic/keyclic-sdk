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
 * The CategoryLinksOrganizationIriTemplateMapping model module.
 * @module model/CategoryLinksOrganizationIriTemplateMapping
 */
var CategoryLinksOrganizationIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "CategoryLinksOrganizationIriTemplateMapping".
   * @alias module:model/CategoryLinksOrganizationIriTemplateMapping
   * @class
  
   */
  function CategoryLinksOrganizationIriTemplateMapping() {
    _classCallCheck(this, CategoryLinksOrganizationIriTemplateMapping);

    this.organization = null;
  }
  /**
   * Constructs a "CategoryLinksOrganizationIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CategoryLinksOrganizationIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/CategoryLinksOrganizationIriTemplateMapping } The populated "CategoryLinksOrganizationIriTemplateMapping" instance.
   */

  _createClass(
    CategoryLinksOrganizationIriTemplateMapping,
    [
      {
        key: "getOrganization",

        /**
         * @return { String }
         */
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { String } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
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
            object = new CategoryLinksOrganizationIriTemplateMapping();
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return CategoryLinksOrganizationIriTemplateMapping;
})();

exports.default = CategoryLinksOrganizationIriTemplateMapping;
