"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _BusinessActivityLinksImage = _interopRequireDefault(
  require("./BusinessActivityLinksImage")
);

var _BusinessActivityLinksSchema = _interopRequireDefault(
  require("./BusinessActivityLinksSchema")
);

var _BusinessActivityLinksSelf = _interopRequireDefault(
  require("./BusinessActivityLinksSelf")
);

var _BusinessActivityLinksThumbnail = _interopRequireDefault(
  require("./BusinessActivityLinksThumbnail")
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
 * The BusinessActivityLinks model module.
 * @module model/BusinessActivityLinks
 */
var BusinessActivityLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "BusinessActivityLinks".
   * @alias module:model/BusinessActivityLinks
   * @class
  
   */
    function BusinessActivityLinks() {
      _classCallCheck(this, BusinessActivityLinks);

      this.image = null;
      this.schema = null;
      this.self = null;
      this.thumbnail = null;
      this.imageType = _BusinessActivityLinksImage.default;
      this.schemaType = _BusinessActivityLinksSchema.default;
      this.selfType = _BusinessActivityLinksSelf.default;
      this.thumbnailType = _BusinessActivityLinksThumbnail.default;
    }
    /**
     * Constructs a "BusinessActivityLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/BusinessActivityLinks } object Optional instance to populate.
     * @return { module:model/BusinessActivityLinks } The populated "BusinessActivityLinks" instance.
     */

    _createClass(
      BusinessActivityLinks,
      [
        {
          key: "getImage",

          /**
           * @return { module:model/BusinessActivityLinksImage }
           */
          value: function getImage() {
            return this.image;
          }
          /**
           * @param { module:model/BusinessActivityLinksImage } image
           */
        },
        {
          key: "setImage",
          value: function setImage(image) {
            this.image = image;
          }
          /**
           * @return { module:model/BusinessActivityLinksSchema }
           */
        },
        {
          key: "getSchema",
          value: function getSchema() {
            return this.schema;
          }
          /**
           * @param { module:model/BusinessActivityLinksSchema } schema
           */
        },
        {
          key: "setSchema",
          value: function setSchema(schema) {
            this.schema = schema;
          }
          /**
           * @return { module:model/BusinessActivityLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/BusinessActivityLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
          }
          /**
           * @return { module:model/BusinessActivityLinksThumbnail }
           */
        },
        {
          key: "getThumbnail",
          value: function getThumbnail() {
            return this.thumbnail;
          }
          /**
           * @param { module:model/BusinessActivityLinksThumbnail } thumbnail
           */
        },
        {
          key: "setThumbnail",
          value: function setThumbnail(thumbnail) {
            this.thumbnail = thumbnail;
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
              object = new BusinessActivityLinks();
            }

            if (data.hasOwnProperty("image")) {
              object.image = _ApiClient.default.convertToType(
                data["image"],
                object.imageType
              );
            }

            if (data.hasOwnProperty("schema")) {
              object.schema = _ApiClient.default.convertToType(
                data["schema"],
                object.schemaType
              );
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            if (data.hasOwnProperty("thumbnail")) {
              object.thumbnail = _ApiClient.default.convertToType(
                data["thumbnail"],
                object.thumbnailType
              );
            }

            return object;
          }
        }
      ]
    );

    return BusinessActivityLinks;
  })();

exports.default = BusinessActivityLinks;
