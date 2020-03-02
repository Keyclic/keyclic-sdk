"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _InternalServiceLinksOrganizationIriTemplate = _interopRequireDefault(
  require("./InternalServiceLinksOrganizationIriTemplate")
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
 * The InternalServiceLinksOrganization model module.
 * @module model/InternalServiceLinksOrganization
 */
var InternalServiceLinksOrganization = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "InternalServiceLinksOrganization".
   * @alias module:model/InternalServiceLinksOrganization
   * @class
  
   */
  function InternalServiceLinksOrganization() {
    _classCallCheck(this, InternalServiceLinksOrganization);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _InternalServiceLinksOrganizationIriTemplate.default;
  }
  /**
   * Constructs a "InternalServiceLinksOrganization" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InternalServiceLinksOrganization } object Optional instance to populate.
   * @return { module:model/InternalServiceLinksOrganization } The populated "InternalServiceLinksOrganization" instance.
   */

  _createClass(
    InternalServiceLinksOrganization,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the organization associated to the given internalservice.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the organization associated to the given internalservice.
         * @param { String } href The URI of the organization associated to the given internalservice.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/InternalServiceLinksOrganizationIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/InternalServiceLinksOrganizationIriTemplate } iriTemplate
         */
      },
      {
        key: "setIriTemplate",
        value: function setIriTemplate(iriTemplate) {
          this.iriTemplate = iriTemplate;
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
            object = new InternalServiceLinksOrganization();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]
  );

  return InternalServiceLinksOrganization;
})();

exports.default = InternalServiceLinksOrganization;
