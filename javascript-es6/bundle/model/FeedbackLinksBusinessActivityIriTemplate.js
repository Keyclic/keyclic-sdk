"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _BusinessActivityLinksImageIriTemplateMapping = _interopRequireDefault(
  require("./BusinessActivityLinksImageIriTemplateMapping")
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
 * The FeedbackLinksBusinessActivityIriTemplate model module.
 * @module model/FeedbackLinksBusinessActivityIriTemplate
 */
var FeedbackLinksBusinessActivityIriTemplate = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "FeedbackLinksBusinessActivityIriTemplate".
   * @alias module:model/FeedbackLinksBusinessActivityIriTemplate
   * @class
  
   */
  function FeedbackLinksBusinessActivityIriTemplate() {
    _classCallCheck(this, FeedbackLinksBusinessActivityIriTemplate);

    this.mapping = null;
    this.mappingType = _BusinessActivityLinksImageIriTemplateMapping.default;
  }
  /**
   * Constructs a "FeedbackLinksBusinessActivityIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksBusinessActivityIriTemplate } object Optional instance to populate.
   * @return { module:model/FeedbackLinksBusinessActivityIriTemplate } The populated "FeedbackLinksBusinessActivityIriTemplate" instance.
   */

  _createClass(
    FeedbackLinksBusinessActivityIriTemplate,
    [
      {
        key: "getMapping",

        /**
         * @return { module:model/BusinessActivityLinksImageIriTemplateMapping }
         */
        value: function getMapping() {
          return this.mapping;
        }
        /**
         * @param { module:model/BusinessActivityLinksImageIriTemplateMapping } mapping
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
            object = new FeedbackLinksBusinessActivityIriTemplate();
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

  return FeedbackLinksBusinessActivityIriTemplate;
})();

exports.default = FeedbackLinksBusinessActivityIriTemplate;
