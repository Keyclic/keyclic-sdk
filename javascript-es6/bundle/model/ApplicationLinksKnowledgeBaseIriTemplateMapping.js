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
 * The ApplicationLinksKnowledgeBaseIriTemplateMapping model module.
 * @module model/ApplicationLinksKnowledgeBaseIriTemplateMapping
 */
var ApplicationLinksKnowledgeBaseIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ApplicationLinksKnowledgeBaseIriTemplateMapping".
   * @alias module:model/ApplicationLinksKnowledgeBaseIriTemplateMapping
   * @class
  
   */
    function ApplicationLinksKnowledgeBaseIriTemplateMapping() {
      _classCallCheck(this, ApplicationLinksKnowledgeBaseIriTemplateMapping);

      this.knowledgeBase = null;
    }
    /**
     * Constructs a "ApplicationLinksKnowledgeBaseIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ApplicationLinksKnowledgeBaseIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/ApplicationLinksKnowledgeBaseIriTemplateMapping } The populated "ApplicationLinksKnowledgeBaseIriTemplateMapping" instance.
     */

    _createClass(
      ApplicationLinksKnowledgeBaseIriTemplateMapping,
      [
        {
          key: "getKnowledgeBase",

          /**
           * @return { String }
           */
          value: function getKnowledgeBase() {
            return this.knowledgeBase;
          }
          /**
           * @param { String } knowledgeBase
           */
        },
        {
          key: "setKnowledgeBase",
          value: function setKnowledgeBase(knowledgeBase) {
            this.knowledgeBase = knowledgeBase;
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
              object = new ApplicationLinksKnowledgeBaseIriTemplateMapping();
            }

            if (data.hasOwnProperty("knowledgeBase")) {
              object.knowledgeBase = _ApiClient.default.convertToType(
                data["knowledgeBase"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ApplicationLinksKnowledgeBaseIriTemplateMapping;
  })();

exports.default = ApplicationLinksKnowledgeBaseIriTemplateMapping;
