"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackLinksBusinessActivity = _interopRequireDefault(
  require("./FeedbackLinksBusinessActivity")
);

var _FeedbackLinksCategory = _interopRequireDefault(
  require("./FeedbackLinksCategory")
);

var _FeedbackLinksImage = _interopRequireDefault(
  require("./FeedbackLinksImage")
);

var _FeedbackLinksImages = _interopRequireDefault(
  require("./FeedbackLinksImages")
);

var _FeedbackLinksReporter = _interopRequireDefault(
  require("./FeedbackLinksReporter")
);

var _FeedbackLinksSelf = _interopRequireDefault(require("./FeedbackLinksSelf"));

var _FeedbackLinksTracking = _interopRequireDefault(
  require("./FeedbackLinksTracking")
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
 * The FeedbackLinks model module.
 * @module model/FeedbackLinks
 */
var FeedbackLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackLinks".
   * @alias module:model/FeedbackLinks
   * @class
  
   */
    function FeedbackLinks() {
      _classCallCheck(this, FeedbackLinks);

      this.businessActivity = null;
      this.category = null;
      this.image = null;
      this.images = [];
      this.reporter = null;
      this.self = null;
      this.tracking = null;
      this.businessActivityType = _FeedbackLinksBusinessActivity.default;
      this.categoryType = _FeedbackLinksCategory.default;
      this.imageType = _FeedbackLinksImage.default;
      this.imagesType = _FeedbackLinksImages.default;
      this.reporterType = _FeedbackLinksReporter.default;
      this.selfType = _FeedbackLinksSelf.default;
      this.trackingType = _FeedbackLinksTracking.default;
    }
    /**
     * Constructs a "FeedbackLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackLinks } object Optional instance to populate.
     * @return { module:model/FeedbackLinks } The populated "FeedbackLinks" instance.
     */

    _createClass(
      FeedbackLinks,
      [
        {
          key: "getBusinessActivity",

          /**
           * @return { module:model/FeedbackLinksBusinessActivity }
           */
          value: function getBusinessActivity() {
            return this.businessActivity;
          }
          /**
           * @param { module:model/FeedbackLinksBusinessActivity } businessActivity
           */
        },
        {
          key: "setBusinessActivity",
          value: function setBusinessActivity(businessActivity) {
            this.businessActivity = businessActivity;
          }
          /**
           * @return { module:model/FeedbackLinksCategory }
           */
        },
        {
          key: "getCategory",
          value: function getCategory() {
            return this.category;
          }
          /**
           * @param { module:model/FeedbackLinksCategory } category
           */
        },
        {
          key: "setCategory",
          value: function setCategory(category) {
            this.category = category;
          }
          /**
           * @return { module:model/FeedbackLinksImage }
           */
        },
        {
          key: "getImage",
          value: function getImage() {
            return this.image;
          }
          /**
           * @param { module:model/FeedbackLinksImage } image
           */
        },
        {
          key: "setImage",
          value: function setImage(image) {
            this.image = image;
          }
          /**
           * @return { Array.<module:model/FeedbackLinksImages> }
           */
        },
        {
          key: "getImages",
          value: function getImages() {
            return this.images;
          }
          /**
           * @param { Array.<module:model/FeedbackLinksImages> } images
           */
        },
        {
          key: "setImages",
          value: function setImages(images) {
            this.images = images;
          }
          /**
           * @return { module:model/FeedbackLinksReporter }
           */
        },
        {
          key: "getReporter",
          value: function getReporter() {
            return this.reporter;
          }
          /**
           * @param { module:model/FeedbackLinksReporter } reporter
           */
        },
        {
          key: "setReporter",
          value: function setReporter(reporter) {
            this.reporter = reporter;
          }
          /**
           * @return { module:model/FeedbackLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/FeedbackLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
          }
          /**
           * @return { module:model/FeedbackLinksTracking }
           */
        },
        {
          key: "getTracking",
          value: function getTracking() {
            return this.tracking;
          }
          /**
           * @param { module:model/FeedbackLinksTracking } tracking
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
              object = new FeedbackLinks();
            }

            if (data.hasOwnProperty("businessActivity")) {
              object.businessActivity = _ApiClient.default.convertToType(
                data["businessActivity"],
                object.businessActivityType
              );
            }

            if (data.hasOwnProperty("category")) {
              object.category = _ApiClient.default.convertToType(
                data["category"],
                object.categoryType
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

            if (data.hasOwnProperty("reporter")) {
              object.reporter = _ApiClient.default.convertToType(
                data["reporter"],
                object.reporterType
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

    return FeedbackLinks;
  })();

exports.default = FeedbackLinks;
