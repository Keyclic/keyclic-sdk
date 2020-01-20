"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WorkflowLinksSelfIriTemplate = _interopRequireDefault(
  require("./WorkflowLinksSelfIriTemplate")
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
 * The WorkflowLinksSelf model module.
 * @module model/WorkflowLinksSelf
 */
var WorkflowLinksSelf =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "WorkflowLinksSelf".
   * @alias module:model/WorkflowLinksSelf
   * @class
  
   */
    function WorkflowLinksSelf() {
      _classCallCheck(this, WorkflowLinksSelf);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _WorkflowLinksSelfIriTemplate.default;
    }
    /**
     * Constructs a "WorkflowLinksSelf" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/WorkflowLinksSelf } object Optional instance to populate.
     * @return { module:model/WorkflowLinksSelf } The populated "WorkflowLinksSelf" instance.
     */

    _createClass(
      WorkflowLinksSelf,
      [
        {
          key: "getHref",

          /**
           * Gets The URI of the self associated to the given workflow.
           * @return { String }
           */
          value: function getHref() {
            return this.href;
          }
          /**
           * Sets The URI of the self associated to the given workflow.
           * @param { String } href The URI of the self associated to the given workflow.
           */
        },
        {
          key: "setHref",
          value: function setHref(href) {
            this.href = href;
          }
          /**
           * @return { module:model/WorkflowLinksSelfIriTemplate }
           */
        },
        {
          key: "getIriTemplate",
          value: function getIriTemplate() {
            return this.iriTemplate;
          }
          /**
           * @param { module:model/WorkflowLinksSelfIriTemplate } iriTemplate
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
              object = new WorkflowLinksSelf();
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

    return WorkflowLinksSelf;
  })();

exports.default = WorkflowLinksSelf;
