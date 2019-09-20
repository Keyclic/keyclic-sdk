"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackLinksImagesIriTemplate = _interopRequireDefault(
  require("./FeedbackLinksImagesIriTemplate")
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
 * The FeedbackLinksImages model module.
 * @module model/FeedbackLinksImages
 */
var FeedbackLinksImages =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackLinksImages".
   * @alias module:model/FeedbackLinksImages
   * @class
  
   */
    function FeedbackLinksImages() {
      _classCallCheck(this, FeedbackLinksImages);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _FeedbackLinksImagesIriTemplate.default;
    }
    /**
     * Constructs a "FeedbackLinksImages" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackLinksImages } object Optional instance to populate.
     * @return { module:model/FeedbackLinksImages } The populated "FeedbackLinksImages" instance.
     */

    _createClass(
      FeedbackLinksImages,
      [
        {
          key: "getHref",

          /**
           * Gets The URI of the images associated to the given feedback.
           * @return { String }
           */
          value: function getHref() {
            return this.href;
          }
          /**
           * Sets The URI of the images associated to the given feedback.
           * @param { String } href The URI of the images associated to the given feedback.
           */
        },
        {
          key: "setHref",
          value: function setHref(href) {
            this.href = href;
          }
          /**
           * @return { module:model/FeedbackLinksImagesIriTemplate }
           */
        },
        {
          key: "getIriTemplate",
          value: function getIriTemplate() {
            return this.iriTemplate;
          }
          /**
           * @param { module:model/FeedbackLinksImagesIriTemplate } iriTemplate
           */
        },
        {
          key: "setIriTemplate",
          value: function setIriTemplate(iriTemplate) {
            this.iriTemplate = iriTemplate;
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
              object = new FeedbackLinksImages();
            }

            if (data.hasOwnProperty("href")) {
              object.href = _ApiClient.default.convertToType(
                data["href"],
                "String"
              );
            }

            if (data.hasOwnProperty("iriTemplate")) {
              object.iriTemplate = _ApiClient.default.convertToType(
                data["iriTemplate"],
                object.iriTemplateType
              );
            }

            return object;
          }
        }
      ]
    );

    return FeedbackLinksImages;
  })();

exports.default = FeedbackLinksImages;
