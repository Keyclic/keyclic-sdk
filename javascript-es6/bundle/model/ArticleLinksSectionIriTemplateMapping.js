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
 * The ArticleLinksSectionIriTemplateMapping model module.
 * @module model/ArticleLinksSectionIriTemplateMapping
 */
var ArticleLinksSectionIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ArticleLinksSectionIriTemplateMapping".
     * @alias module:model/ArticleLinksSectionIriTemplateMapping
     * @class
    
     */
  function ArticleLinksSectionIriTemplateMapping() {
    _classCallCheck(this, ArticleLinksSectionIriTemplateMapping);

    this.section = null;
  }
  /**
   * Constructs a "ArticleLinksSectionIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ArticleLinksSectionIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/ArticleLinksSectionIriTemplateMapping } The populated "ArticleLinksSectionIriTemplateMapping" instance.
   */

  _createClass(
    ArticleLinksSectionIriTemplateMapping,
    [
      {
        key: "getSection",

        /**
         * @return { String }
         */
        value: function getSection() {
          return this.section;
        }
        /**
         * @param { String } section
         */
      },
      {
        key: "setSection",
        value: function setSection(section) {
          this.section = section;
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
            object = new ArticleLinksSectionIriTemplateMapping();
          }

          if (data.hasOwnProperty("section")) {
            object.section = _ApiClient.default.convertToType(
              data["section"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return ArticleLinksSectionIriTemplateMapping;
})();

exports.default = ArticleLinksSectionIriTemplateMapping;
