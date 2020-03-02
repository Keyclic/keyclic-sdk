"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SignatureSigner = _interopRequireDefault(require("./SignatureSigner"));

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
 * The OperationSignature model module.
 * @module model/OperationSignature
 */
var OperationSignature = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "OperationSignature".
   * @alias module:model/OperationSignature
   * @class
  
   */
  function OperationSignature() {
    _classCallCheck(this, OperationSignature);

    this.signedAt = null;
    this.signer = null;
    this.signerType = _SignatureSigner.default;
  }
  /**
   * Constructs a "OperationSignature" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationSignature } object Optional instance to populate.
   * @return { module:model/OperationSignature } The populated "OperationSignature" instance.
   */

  _createClass(
    OperationSignature,
    [
      {
        key: "getSignedAt",

        /**
         * @return { Date }
         */
        value: function getSignedAt() {
          return this.signedAt;
        }
        /**
         * @param { Date } signedAt
         */
      },
      {
        key: "setSignedAt",
        value: function setSignedAt(signedAt) {
          this.signedAt = signedAt;
        }
        /**
         * @return { module:model/SignatureSigner }
         */
      },
      {
        key: "getSigner",
        value: function getSigner() {
          return this.signer;
        }
        /**
         * @param { module:model/SignatureSigner } signer
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
            object = new OperationSignature();
          }

          if (data.hasOwnProperty("signedAt")) {
            object.signedAt = _ApiClient.default.convertToType(
              data["signedAt"],
              "Date"
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

  return OperationSignature;
})();

exports.default = OperationSignature;
