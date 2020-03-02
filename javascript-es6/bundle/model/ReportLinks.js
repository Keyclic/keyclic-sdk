"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportLinksCategory = _interopRequireDefault(
  require("./ReportLinksCategory")
);

var _ReportLinksDelegatedFrom = _interopRequireDefault(
  require("./ReportLinksDelegatedFrom")
);

var _ReportLinksDelegatedTo = _interopRequireDefault(
  require("./ReportLinksDelegatedTo")
);

var _ReportLinksFeedback = _interopRequireDefault(
  require("./ReportLinksFeedback")
);

var _ReportLinksOperations = _interopRequireDefault(
  require("./ReportLinksOperations")
);

var _ReportLinksOrganization = _interopRequireDefault(
  require("./ReportLinksOrganization")
);

var _ReportLinksPlace = _interopRequireDefault(require("./ReportLinksPlace"));

var _ReportLinksSelf = _interopRequireDefault(require("./ReportLinksSelf"));

var _ReportLinksTracking = _interopRequireDefault(
  require("./ReportLinksTracking")
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
 * The ReportLinks model module.
 * @module model/ReportLinks
 */
var ReportLinks = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReportLinks".
   * @alias module:model/ReportLinks
   * @class
  
   */
  function ReportLinks() {
    _classCallCheck(this, ReportLinks);

    this.category = null;
    this.delegatedFrom = null;
    this.delegatedTo = null;
    this.feedback = null;
    this.operations = null;
    this.organization = null;
    this.place = null;
    this.self = null;
    this.tracking = null;
    this.categoryType = _ReportLinksCategory.default;
    this.delegatedFromType = _ReportLinksDelegatedFrom.default;
    this.delegatedToType = _ReportLinksDelegatedTo.default;
    this.feedbackType = _ReportLinksFeedback.default;
    this.operationsType = _ReportLinksOperations.default;
    this.organizationType = _ReportLinksOrganization.default;
    this.placeType = _ReportLinksPlace.default;
    this.selfType = _ReportLinksSelf.default;
    this.trackingType = _ReportLinksTracking.default;
  }
  /**
   * Constructs a "ReportLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportLinks } object Optional instance to populate.
   * @return { module:model/ReportLinks } The populated "ReportLinks" instance.
   */

  _createClass(
    ReportLinks,
    [
      {
        key: "getCategory",

        /**
         * @return { module:model/ReportLinksCategory }
         */
        value: function getCategory() {
          return this.category;
        }
        /**
         * @param { module:model/ReportLinksCategory } category
         */
      },
      {
        key: "setCategory",
        value: function setCategory(category) {
          this.category = category;
        }
        /**
         * @return { module:model/ReportLinksDelegatedFrom }
         */
      },
      {
        key: "getDelegatedFrom",
        value: function getDelegatedFrom() {
          return this.delegatedFrom;
        }
        /**
         * @param { module:model/ReportLinksDelegatedFrom } delegatedFrom
         */
      },
      {
        key: "setDelegatedFrom",
        value: function setDelegatedFrom(delegatedFrom) {
          this.delegatedFrom = delegatedFrom;
        }
        /**
         * @return { module:model/ReportLinksDelegatedTo }
         */
      },
      {
        key: "getDelegatedTo",
        value: function getDelegatedTo() {
          return this.delegatedTo;
        }
        /**
         * @param { module:model/ReportLinksDelegatedTo } delegatedTo
         */
      },
      {
        key: "setDelegatedTo",
        value: function setDelegatedTo(delegatedTo) {
          this.delegatedTo = delegatedTo;
        }
        /**
         * @return { module:model/ReportLinksFeedback }
         */
      },
      {
        key: "getFeedback",
        value: function getFeedback() {
          return this.feedback;
        }
        /**
         * @param { module:model/ReportLinksFeedback } feedback
         */
      },
      {
        key: "setFeedback",
        value: function setFeedback(feedback) {
          this.feedback = feedback;
        }
        /**
         * @return { module:model/ReportLinksOperations }
         */
      },
      {
        key: "getOperations",
        value: function getOperations() {
          return this.operations;
        }
        /**
         * @param { module:model/ReportLinksOperations } operations
         */
      },
      {
        key: "setOperations",
        value: function setOperations(operations) {
          this.operations = operations;
        }
        /**
         * @return { module:model/ReportLinksOrganization }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { module:model/ReportLinksOrganization } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
        }
        /**
         * @return { module:model/ReportLinksPlace }
         */
      },
      {
        key: "getPlace",
        value: function getPlace() {
          return this.place;
        }
        /**
         * @param { module:model/ReportLinksPlace } place
         */
      },
      {
        key: "setPlace",
        value: function setPlace(place) {
          this.place = place;
        }
        /**
         * @return { module:model/ReportLinksSelf }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/ReportLinksSelf } self
         */
      },
      {
        key: "setSelf",
        value: function setSelf(self) {
          this.self = self;
        }
        /**
         * @return { module:model/ReportLinksTracking }
         */
      },
      {
        key: "getTracking",
        value: function getTracking() {
          return this.tracking;
        }
        /**
         * @param { module:model/ReportLinksTracking } tracking
         */
      },
      {
        key: "setTracking",
        value: function setTracking(tracking) {
          this.tracking = tracking;
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
            object = new ReportLinks();
          }

          if (data.hasOwnProperty("category")) {
            object.category = _ApiClient.default.convertToType(
              data["category"],
              object.categoryType
            );
          }

          if (data.hasOwnProperty("delegatedFrom")) {
            object.delegatedFrom = _ApiClient.default.convertToType(
              data["delegatedFrom"],
              object.delegatedFromType
            );
          }

          if (data.hasOwnProperty("delegatedTo")) {
            object.delegatedTo = _ApiClient.default.convertToType(
              data["delegatedTo"],
              object.delegatedToType
            );
          }

          if (data.hasOwnProperty("feedback")) {
            object.feedback = _ApiClient.default.convertToType(
              data["feedback"],
              object.feedbackType
            );
          }

          if (data.hasOwnProperty("operations")) {
            object.operations = _ApiClient.default.convertToType(
              data["operations"],
              object.operationsType
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              object.placeType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("tracking")) {
            object.tracking = _ApiClient.default.convertToType(
              data["tracking"],
              object.trackingType
            );
          }

          return object;
        }
      }
    ]
  );

  return ReportLinks;
})();

exports.default = ReportLinks;
