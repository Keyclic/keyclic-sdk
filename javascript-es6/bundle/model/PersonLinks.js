"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PersonLinksApplication = _interopRequireDefault(
  require("./PersonLinksApplication")
);

var _PersonLinksCreatedBy = _interopRequireDefault(
  require("./PersonLinksCreatedBy")
);

var _PersonLinksImage = _interopRequireDefault(require("./PersonLinksImage"));

var _PersonLinksSelf = _interopRequireDefault(require("./PersonLinksSelf"));

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
 * The PersonLinks model module.
 * @module model/PersonLinks
 */
var PersonLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonLinks".
   * @alias module:model/PersonLinks
   * @class
  
   */
    function PersonLinks() {
      _classCallCheck(this, PersonLinks);

      this.application = null;
      this.createdBy = null;
      this.image = null;
      this.self = null;
      this.applicationType = _PersonLinksApplication.default;
      this.createdByType = _PersonLinksCreatedBy.default;
      this.imageType = _PersonLinksImage.default;
      this.selfType = _PersonLinksSelf.default;
    }
    /**
     * Constructs a "PersonLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonLinks } object Optional instance to populate.
     * @return { module:model/PersonLinks } The populated "PersonLinks" instance.
     */

    _createClass(
      PersonLinks,
      [
        {
          key: "getApplication",

          /**
           * @return { module:model/PersonLinksApplication }
           */
          value: function getApplication() {
            return this.application;
          }
          /**
           * @param { module:model/PersonLinksApplication } application
           */
        },
        {
          key: "setApplication",
          value: function setApplication(application) {
            this.application = application;
          }
          /**
           * @return { module:model/PersonLinksCreatedBy }
           */
        },
        {
          key: "getCreatedBy",
          value: function getCreatedBy() {
            return this.createdBy;
          }
          /**
           * @param { module:model/PersonLinksCreatedBy } createdBy
           */
        },
        {
          key: "setCreatedBy",
          value: function setCreatedBy(createdBy) {
            this.createdBy = createdBy;
          }
          /**
           * @return { module:model/PersonLinksImage }
           */
        },
        {
          key: "getImage",
          value: function getImage() {
            return this.image;
          }
          /**
           * @param { module:model/PersonLinksImage } image
           */
        },
        {
          key: "setImage",
          value: function setImage(image) {
            this.image = image;
          }
          /**
           * @return { module:model/PersonLinksSelf }
           */
        },
        {
          key: "getSelf",
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/PersonLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
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
              object = new PersonLinks();
            }

            if (data.hasOwnProperty("application")) {
              object.application = _ApiClient.default.convertToType(
                data["application"],
                object.applicationType
              );
            }

            if (data.hasOwnProperty("createdBy")) {
              object.createdBy = _ApiClient.default.convertToType(
                data["createdBy"],
                object.createdByType
              );
            }

            if (data.hasOwnProperty("image")) {
              object.image = _ApiClient.default.convertToType(
                data["image"],
                object.imageType
              );
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            return object;
          }
        }
      ]
    );

    return PersonLinks;
  })();

exports.default = PersonLinks;
