"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentLinksFileIriTemplateMapping = _interopRequireDefault(
  require("./DocumentLinksFileIriTemplateMapping")
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
 * The DocumentLinksFileIriTemplate model module.
 * @module model/DocumentLinksFileIriTemplate
 */
var DocumentLinksFileIriTemplate = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DocumentLinksFileIriTemplate".
   * @alias module:model/DocumentLinksFileIriTemplate
   * @class
  
   */
  function DocumentLinksFileIriTemplate() {
    _classCallCheck(this, DocumentLinksFileIriTemplate);

    this.mapping = null;
    this.mappingType = _DocumentLinksFileIriTemplateMapping.default;
  }
  /**
   * Constructs a "DocumentLinksFileIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DocumentLinksFileIriTemplate } object Optional instance to populate.
   * @return { module:model/DocumentLinksFileIriTemplate } The populated "DocumentLinksFileIriTemplate" instance.
   */

  _createClass(
    DocumentLinksFileIriTemplate,
    [
      {
        key: "getMapping",

        /**
         * @return { module:model/DocumentLinksFileIriTemplateMapping }
         */
        value: function getMapping() {
          return this.mapping;
        }
        /**
         * @param { module:model/DocumentLinksFileIriTemplateMapping } mapping
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
            object = new DocumentLinksFileIriTemplate();
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

  return DocumentLinksFileIriTemplate;
})();

exports.default = DocumentLinksFileIriTemplate;
