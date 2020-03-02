"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WorkflowLinksSelfIriTemplateMapping = _interopRequireDefault(
  require("./WorkflowLinksSelfIriTemplateMapping")
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
 * The WorkflowLinksSelfIriTemplate model module.
 * @module model/WorkflowLinksSelfIriTemplate
 */
var WorkflowLinksSelfIriTemplate = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "WorkflowLinksSelfIriTemplate".
   * @alias module:model/WorkflowLinksSelfIriTemplate
   * @class
  
   */
  function WorkflowLinksSelfIriTemplate() {
    _classCallCheck(this, WorkflowLinksSelfIriTemplate);

    this.mapping = null;
    this.mappingType = _WorkflowLinksSelfIriTemplateMapping.default;
  }
  /**
   * Constructs a "WorkflowLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WorkflowLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/WorkflowLinksSelfIriTemplate } The populated "WorkflowLinksSelfIriTemplate" instance.
   */

  _createClass(
    WorkflowLinksSelfIriTemplate,
    [
      {
        key: "getMapping",

        /**
         * @return { module:model/WorkflowLinksSelfIriTemplateMapping }
         */
        value: function getMapping() {
          return this.mapping;
        }
        /**
         * @param { module:model/WorkflowLinksSelfIriTemplateMapping } mapping
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
            object = new WorkflowLinksSelfIriTemplate();
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

  return WorkflowLinksSelfIriTemplate;
})();

exports.default = WorkflowLinksSelfIriTemplate;
