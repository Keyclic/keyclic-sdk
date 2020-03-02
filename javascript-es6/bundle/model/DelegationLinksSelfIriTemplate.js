"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationLinksSelfIriTemplateMapping = _interopRequireDefault(
  require("./DelegationLinksSelfIriTemplateMapping")
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
 * The DelegationLinksSelfIriTemplate model module.
 * @module model/DelegationLinksSelfIriTemplate
 */
var DelegationLinksSelfIriTemplate = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DelegationLinksSelfIriTemplate".
   * @alias module:model/DelegationLinksSelfIriTemplate
   * @class
  
   */
  function DelegationLinksSelfIriTemplate() {
    _classCallCheck(this, DelegationLinksSelfIriTemplate);

    this.mapping = null;
    this.mappingType = _DelegationLinksSelfIriTemplateMapping.default;
  }
  /**
   * Constructs a "DelegationLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/DelegationLinksSelfIriTemplate } The populated "DelegationLinksSelfIriTemplate" instance.
   */

  _createClass(
    DelegationLinksSelfIriTemplate,
    [
      {
        key: "getMapping",

        /**
         * @return { module:model/DelegationLinksSelfIriTemplateMapping }
         */
        value: function getMapping() {
          return this.mapping;
        }
        /**
         * @param { module:model/DelegationLinksSelfIriTemplateMapping } mapping
         */
      },
      {
        key: "setMapping",
        value: function setMapping(mapping) {
          this.mapping = mapping;
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
            object = new DelegationLinksSelfIriTemplate();
          }

          if (data.hasOwnProperty("mapping")) {
            object.mapping = _ApiClient.default.convertToType(
              data["mapping"],
              object.mappingType
            );
          }

          return object;
        }
      }
    ]
  );

  return DelegationLinksSelfIriTemplate;
})();

exports.default = DelegationLinksSelfIriTemplate;
