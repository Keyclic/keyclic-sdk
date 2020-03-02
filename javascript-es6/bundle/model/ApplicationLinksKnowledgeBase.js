"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ApplicationLinksKnowledgeBaseIriTemplate = _interopRequireDefault(
  require("./ApplicationLinksKnowledgeBaseIriTemplate")
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
 * The ApplicationLinksKnowledgeBase model module.
 * @module model/ApplicationLinksKnowledgeBase
 */
var ApplicationLinksKnowledgeBase = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ApplicationLinksKnowledgeBase".
   * @alias module:model/ApplicationLinksKnowledgeBase
   * @class
  
   */
  function ApplicationLinksKnowledgeBase() {
    _classCallCheck(this, ApplicationLinksKnowledgeBase);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _ApplicationLinksKnowledgeBaseIriTemplate.default;
  }
  /**
   * Constructs a "ApplicationLinksKnowledgeBase" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ApplicationLinksKnowledgeBase } object Optional instance to populate.
   * @return { module:model/ApplicationLinksKnowledgeBase } The populated "ApplicationLinksKnowledgeBase" instance.
   */

  _createClass(
    ApplicationLinksKnowledgeBase,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the knowledgeBase associated to the given application.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the knowledgeBase associated to the given application.
         * @param { String } href The URI of the knowledgeBase associated to the given application.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/ApplicationLinksKnowledgeBaseIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/ApplicationLinksKnowledgeBaseIriTemplate } iriTemplate
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
            object = new ApplicationLinksKnowledgeBase();
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

  return ApplicationLinksKnowledgeBase;
})();

exports.default = ApplicationLinksKnowledgeBase;
