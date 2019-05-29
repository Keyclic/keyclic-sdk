"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackLinksImages = _interopRequireDefault(
  require("./FeedbackLinksImages")
);

var _OperationLinksCreatedBy = _interopRequireDefault(
  require("./OperationLinksCreatedBy")
);

var _OperationLinksFeedback = _interopRequireDefault(
  require("./OperationLinksFeedback")
);

var _OperationLinksImage = _interopRequireDefault(
  require("./OperationLinksImage")
);

var _OperationLinksOperator = _interopRequireDefault(
  require("./OperationLinksOperator")
);

var _OperationLinksReport = _interopRequireDefault(
  require("./OperationLinksReport")
);

var _OperationLinksSelf = _interopRequireDefault(
  require("./OperationLinksSelf")
);

var _OperationLinksTracking = _interopRequireDefault(
  require("./OperationLinksTracking")
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
 * The OperationLinks model module.
 * @module model/OperationLinks
 */
var OperationLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationLinks".
   * @alias module:model/OperationLinks
   * @class
  
   */
    function OperationLinks() {
      _classCallCheck(this, OperationLinks);

      this.self = null;
      this.image = null;
      this.feedback = null;
      this.report = null;
      this.operator = null;
      this.createdBy = null;
      this.tracking = null;
      this.images = [];
      this.selfType = _OperationLinksSelf.default;
      this.imageType = _OperationLinksImage.default;
      this.feedbackType = _OperationLinksFeedback.default;
      this.reportType = _OperationLinksReport.default;
      this.operatorType = _OperationLinksOperator.default;
      this.createdByType = _OperationLinksCreatedBy.default;
      this.trackingType = _OperationLinksTracking.default;
      this.imagesType = _FeedbackLinksImages.default;
    }
    /**
     * Constructs a "OperationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationLinks } object Optional instance to populate.
     * @return { module:model/OperationLinks } The populated "OperationLinks" instance.
     */

    _createClass(OperationLinks, null, [
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
            object = new OperationLinks();
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("image")) {
            object.image = _ApiClient.default.convertToType(
              data["image"],
              object.imageType
            );
          }

          if (data.hasOwnProperty("feedback")) {
            object.feedback = _ApiClient.default.convertToType(
              data["feedback"],
              object.feedbackType
            );
          }

          if (data.hasOwnProperty("report")) {
            object.report = _ApiClient.default.convertToType(
              data["report"],
              object.reportType
            );
          }

          if (data.hasOwnProperty("operator")) {
            object.operator = _ApiClient.default.convertToType(
              data["operator"],
              object.operatorType
            );
          }

          if (data.hasOwnProperty("createdBy")) {
            object.createdBy = _ApiClient.default.convertToType(
              data["createdBy"],
              object.createdByType
            );
          }

          if (data.hasOwnProperty("tracking")) {
            object.tracking = _ApiClient.default.convertToType(
              data["tracking"],
              object.trackingType
            );
          }

          if (data.hasOwnProperty("images")) {
            object.images = _ApiClient.default.convertToType(data["images"], [
              object.imagesType
            ]);
          }

          return object;
        }
      }
    ]);

    return OperationLinks;
  })();

exports.default = OperationLinks;
