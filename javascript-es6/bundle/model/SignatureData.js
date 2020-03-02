"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SignatureDataSigner = _interopRequireDefault(
  require("./SignatureDataSigner")
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
 * The SignatureData model module.
 * @module model/SignatureData
 */
var SignatureData = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "SignatureData".
   * @alias module:model/SignatureData
   * @class
  
   * @param image { String }
  
   */
  function SignatureData(image) {
    _classCallCheck(this, SignatureData);

    this.signer = null;
    this.image = image;
    this.signerType = _SignatureDataSigner.default;
  }
  /**
   * Constructs a "SignatureData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/SignatureData } object Optional instance to populate.
   * @return { module:model/SignatureData } The populated "SignatureData" instance.
   */

  _createClass(
    SignatureData,
    [
      {
        key: "getSigner",

        /**
         * @return { module:model/SignatureDataSigner }
         */
        value: function getSigner() {
          return this.signer;
        }
        /**
         * @param { module:model/SignatureDataSigner } signer
         */
      },
      {
        key: "setSigner",
        value: function setSigner(signer) {
          this.signer = signer;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getImage",
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
            object = new SignatureData();
          }

          if (data.hasOwnProperty("signer")) {
            object.signer = _ApiClient.default.convertToType(
              data["signer"],
              object.signerType
            );
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

  return SignatureData;
})();

exports.default = SignatureData;
