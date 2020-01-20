"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Signer = _interopRequireDefault(require("./Signer"));

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
 * The Signature model module.
 * @module model/Signature
 */
var Signature =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Signature".
   * @alias module:model/Signature
   * @class
  
   */
    function Signature() {
      _classCallCheck(this, Signature);

      this.signedAt = null;
      this.signer = null;
      this.signerType = _Signer.default;
    }
    /**
     * Constructs a "Signature" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Signature } object Optional instance to populate.
     * @return { module:model/Signature } The populated "Signature" instance.
     */

    _createClass(
      Signature,
      [
        {
          key: "getSignedAt",

          /**
           * @return { String }
           */
          value: function getSignedAt() {
            return this.signedAt;
          }
          /**
           * @param { String } signedAt
           */
        },
        {
          key: "setSignedAt",
          value: function setSignedAt(signedAt) {
            this.signedAt = signedAt;
          }
          /**
           * @return { module:model/Signer }
           */
        },
        {
          key: "getSigner",
          value: function getSigner() {
            return this.signer;
          }
          /**
           * @param { module:model/Signer } signer
           */
        },
        {
          key: "setSigner",
          value: function setSigner(signer) {
            this.signer = signer;
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
              object = new Signature();
            }

            if (data.hasOwnProperty("signedAt")) {
              object.signedAt = _ApiClient.default.convertToType(
                data["signedAt"],
                "String"
              );
            }

            if (data.hasOwnProperty("signer")) {
              object.signer = _ApiClient.default.convertToType(
                data["signer"],
                object.signerType
              );
            }

            return object;
          }
        }
      ]
    );

    return Signature;
  })();

exports.default = Signature;
