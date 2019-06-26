"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OperationSignatureSigner = _interopRequireDefault(
  require("./OperationSignatureSigner")
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
 * The OperationSignature model module.
 * @module model/OperationSignature
 */
var OperationSignature =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationSignature".
   * @alias module:model/OperationSignature
   * @class
  
   * @param signer { module:model/OperationSignatureSigner }
  
   * @param signedAt { Date }
  
   */
    function OperationSignature(signer, signedAt) {
      _classCallCheck(this, OperationSignature);

      this.signer = signer;
      this.signedAt = signedAt;
      this.signerType = _OperationSignatureSigner.default;
    }
    /**
     * Constructs a "OperationSignature" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationSignature } object Optional instance to populate.
     * @return { module:model/OperationSignature } The populated "OperationSignature" instance.
     */

    _createClass(OperationSignature, null, [
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

          if (data.hasOwnProperty("signer")) {
            object.signer = _ApiClient.default.convertToType(
              data["signer"],
              object.signerType
            );
          }

          if (data.hasOwnProperty("signedAt")) {
            object.signedAt = _ApiClient.default.convertToType(
              data["signedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]);

    return OperationSignature;
  })();

exports.default = OperationSignature;
