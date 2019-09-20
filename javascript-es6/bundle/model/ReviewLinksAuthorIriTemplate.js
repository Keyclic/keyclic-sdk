"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ContributionLinksContributorIriTemplateMapping = _interopRequireDefault(
  require("./ContributionLinksContributorIriTemplateMapping")
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
 * The ReviewLinksAuthorIriTemplate model module.
 * @module model/ReviewLinksAuthorIriTemplate
 */
var ReviewLinksAuthorIriTemplate =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReviewLinksAuthorIriTemplate".
   * @alias module:model/ReviewLinksAuthorIriTemplate
   * @class
  
   */
    function ReviewLinksAuthorIriTemplate() {
      _classCallCheck(this, ReviewLinksAuthorIriTemplate);

      this.mapping = null;
      this.mappingType =
        _ContributionLinksContributorIriTemplateMapping.default;
    }
    /**
     * Constructs a "ReviewLinksAuthorIriTemplate" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReviewLinksAuthorIriTemplate } object Optional instance to populate.
     * @return { module:model/ReviewLinksAuthorIriTemplate } The populated "ReviewLinksAuthorIriTemplate" instance.
     */

    _createClass(
      ReviewLinksAuthorIriTemplate,
      [
        {
          key: "getMapping",

          /**
           * @return { module:model/ContributionLinksContributorIriTemplateMapping }
           */
          value: function getMapping() {
            return this.mapping;
          }
          /**
           * @param { module:model/ContributionLinksContributorIriTemplateMapping } mapping
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
              object = new ReviewLinksAuthorIriTemplate();
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

    return ReviewLinksAuthorIriTemplate;
  })();

exports.default = ReviewLinksAuthorIriTemplate;
