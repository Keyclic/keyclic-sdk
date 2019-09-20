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
 * The ImageData model module.
 * @module model/ImageData
 */
var ImageData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ImageData".
   * @alias module:model/ImageData
   * @class
  
   * @param image { String }
  
   */
    function ImageData(image) {
      _classCallCheck(this, ImageData);

      this.image = image;
    }
    /**
     * Constructs a "ImageData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ImageData } object Optional instance to populate.
     * @return { module:model/ImageData } The populated "ImageData" instance.
     */

    _createClass(
      ImageData,
      [
        {
          key: "getImage",

          /**
           * @return { String }
           */
          value: function getImage() {
            return this.image;
          }
          /**
           * @param { String } image
           */
        },
        {
          key: "setImage",
          value: function setImage(image) {
            this.image = image;
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
              object = new ImageData();
            }

            if (data.hasOwnProperty("image")) {
              object.image = _ApiClient.default.convertToType(
                data["image"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ImageData;
  })();

exports.default = ImageData;
