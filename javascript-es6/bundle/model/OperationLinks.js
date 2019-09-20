"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OperationLinksCreatedBy = _interopRequireDefault(
  require("./OperationLinksCreatedBy")
);

var _OperationLinksFeedback = _interopRequireDefault(
  require("./OperationLinksFeedback")
);

var _OperationLinksImage = _interopRequireDefault(
  require("./OperationLinksImage")
);

var _OperationLinksImages = _interopRequireDefault(
  require("./OperationLinksImages")
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

      this.createdBy = null;
      this.feedback = null;
      this.image = null;
      this.images = [];
      this.operator = null;
      this.report = null;
      this.self = null;
      this.tracking = null;
      this.createdByType = _OperationLinksCreatedBy.default;
      this.feedbackType = _OperationLinksFeedback.default;
      this.imageType = _OperationLinksImage.default;
      this.imagesType = _OperationLinksImages.default;
      this.operatorType = _OperationLinksOperator.default;
      this.reportType = _OperationLinksReport.default;
      this.selfType = _OperationLinksSelf.default;
      this.trackingType = _OperationLinksTracking.default;
    }
    /**
     * Constructs a "OperationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationLinks } object Optional instance to populate.
     * @return { module:model/OperationLinks } The populated "OperationLinks" instance.
     */

    _createClass(
      OperationLinks,
      [
        {
          key: "getCreatedBy",

          /**
           * @return { module:model/OperationLinksCreatedBy }
           */
          value: function getCreatedBy() {
            return this.createdBy;
          }
          /**
           * @param { module:model/OperationLinksCreatedBy } createdBy
           */
        },
        {
          key: "setCreatedBy",
          value: function setCreatedBy(createdBy) {
            this.createdBy = createdBy;
          }
          /**
           * @return { module:model/OperationLinksFeedback }
           */
        },
        {
          key: "getFeedback",
          value: function getFeedback() {
            return this.feedback;
          }
          /**
           * @param { module:model/OperationLinksFeedback } feedback
           */
        },
        {
          key: "setFeedback",
          value: function setFeedback(feedback) {
            this.feedback = feedback;
          }
          /**
           * @return { module:model/OperationLinksImage }
           */
        },
        {
          key: "getImage",
          value: function getImage() {
            return this.image;
          }
          /**
           * @param { module:model/OperationLinksImage } image
           */
        },
        {
          key: "setImage",
          value: function setImage(image) {
            this.image = image;
          }
          /**
           * @return { Array.<module:model/OperationLinksImages> }
           */
        },
        {
          key: "getImages",
          value: function getImages() {
            return this.images;
          }
          /**
           * @param { Array.<module:model/OperationLinksImages> } images
           */
        },
        {
          key: "setImages",
          value: function setImages(images) {
            this.images = images;
          }
          /**
           * @return { module:model/OperationLinksOperator }
           */
        },
        {
          key: "getOperator",
          value: function getOperator() {
            return this.operator;
          }
          /**
           * @param { module:model/OperationLinksOperator } operator
           */
        },
        {
          key: "setOperator",
          value: function setOperator(operator) {
            this.operator = operator;
          }
          /**
           * @return { module:model/OperationLinksReport }
           */
        },
        {
          key: "getReport",
          value: function getReport() {
            return this.report;
          }
          /**
           * @param { module:model/OperationLinksReport } report
           */
        },
        {
          key: "setReport",
          value: function setReport(report) {
            this.report = report;
          }
          /**
           * @return { module:model/OperationLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/OperationLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
          }
          /**
           * @return { module:model/OperationLinksTracking }
           */
        },
        {
          key: "getTracking",
          value: function getTracking() {
            return this.tracking;
          }
          /**
           * @param { module:model/OperationLinksTracking } tracking
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
              object = new OperationLinks();
            }

            if (data.hasOwnProperty("createdBy")) {
              object.createdBy = _ApiClient.default.convertToType(
                data["createdBy"],
                object.createdByType
              );
            }

            if (data.hasOwnProperty("feedback")) {
              object.feedback = _ApiClient.default.convertToType(
                data["feedback"],
                object.feedbackType
              );
            }

            if (data.hasOwnProperty("image")) {
              object.image = _ApiClient.default.convertToType(
                data["image"],
                object.imageType
              );
            }

            if (data.hasOwnProperty("images")) {
              object.images = _ApiClient.default.convertToType(data["images"], [
                object.imagesType
              ]);
            }

            if (data.hasOwnProperty("operator")) {
              object.operator = _ApiClient.default.convertToType(
                data["operator"],
                object.operatorType
              );
            }

            if (data.hasOwnProperty("report")) {
              object.report = _ApiClient.default.convertToType(
                data["report"],
                object.reportType
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

    return OperationLinks;
  })();

exports.default = OperationLinks;
