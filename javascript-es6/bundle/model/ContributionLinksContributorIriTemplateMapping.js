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
 * The ContributionLinksContributorIriTemplateMapping model module.
 * @module model/ContributionLinksContributorIriTemplateMapping
 */
var ContributionLinksContributorIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ContributionLinksContributorIriTemplateMapping".
     * @alias module:model/ContributionLinksContributorIriTemplateMapping
     * @class
    
     */
  function ContributionLinksContributorIriTemplateMapping() {
    _classCallCheck(this, ContributionLinksContributorIriTemplateMapping);

    this.person = null;
  }
  /**
   * Constructs a "ContributionLinksContributorIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksContributorIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/ContributionLinksContributorIriTemplateMapping } The populated "ContributionLinksContributorIriTemplateMapping" instance.
   */

  _createClass(
    ContributionLinksContributorIriTemplateMapping,
    [
      {
        key: "getPerson",

        /**
         * @return { String }
         */
        value: function getPerson() {
          return this.person;
        }
        /**
         * @param { String } person
         */
      },
      {
        key: "setPerson",
        value: function setPerson(person) {
          this.person = person;
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
            object = new ContributionLinksContributorIriTemplateMapping();
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return ContributionLinksContributorIriTemplateMapping;
})();

exports.default = ContributionLinksContributorIriTemplateMapping;
