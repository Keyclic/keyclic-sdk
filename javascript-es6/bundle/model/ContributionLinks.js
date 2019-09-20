"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ContributionLinksContributor = _interopRequireDefault(
  require("./ContributionLinksContributor")
);

var _ContributionLinksFeedback = _interopRequireDefault(
  require("./ContributionLinksFeedback")
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
 * The ContributionLinks model module.
 * @module model/ContributionLinks
 */
var ContributionLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ContributionLinks".
   * @alias module:model/ContributionLinks
   * @class
  
   */
    function ContributionLinks() {
      _classCallCheck(this, ContributionLinks);

      this.contributor = null;
      this.feedback = null;
      this.contributorType = _ContributionLinksContributor.default;
      this.feedbackType = _ContributionLinksFeedback.default;
    }
    /**
     * Constructs a "ContributionLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ContributionLinks } object Optional instance to populate.
     * @return { module:model/ContributionLinks } The populated "ContributionLinks" instance.
     */

    _createClass(
      ContributionLinks,
      [
        {
          key: "getContributor",

          /**
           * @return { module:model/ContributionLinksContributor }
           */
          value: function getContributor() {
            return this.contributor;
          }
          /**
           * @param { module:model/ContributionLinksContributor } contributor
           */
        },
        {
          key: "setContributor",
          value: function setContributor(contributor) {
            this.contributor = contributor;
          }
          /**
           * @return { module:model/ContributionLinksFeedback }
           */
        },
        {
          key: "getFeedback",
          value: function getFeedback() {
            return this.feedback;
          }
          /**
           * @param { module:model/ContributionLinksFeedback } feedback
           */
        },
        {
          key: "setFeedback",
          value: function setFeedback(feedback) {
            this.feedback = feedback;
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
              object = new ContributionLinks();
            }

            if (data.hasOwnProperty("contributor")) {
              object.contributor = _ApiClient.default.convertToType(
                data["contributor"],
                object.contributorType
              );
            }

            if (data.hasOwnProperty("feedback")) {
              object.feedback = _ApiClient.default.convertToType(
                data["feedback"],
                object.feedbackType
              );
            }

            return object;
          }
        }
      ]
    );

    return ContributionLinks;
  })();

exports.default = ContributionLinks;
