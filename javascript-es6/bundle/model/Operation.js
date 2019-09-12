"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OperationEmbedded = _interopRequireDefault(require("./OperationEmbedded"));

var _OperationLinks = _interopRequireDefault(require("./OperationLinks"));

var _OperationSignature = _interopRequireDefault(
  require("./OperationSignature")
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
 * The Operation model module.
 * @module model/Operation
 */
var Operation =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Operation".
   * @alias module:model/Operation
   * @class
  
   * @param state { Array.<String> }
  
   */
    function Operation(state) {
      _classCallCheck(this, Operation);

      this.embedded = null;
      this.links = null;
      this.createdAt = null;
      this.description = null;
      this.id = null;
      this.identificationNumber = null;
      this.name = null;
      this.scheduledAt = null;
      this.signature = null;
      this.state = state;
      this.type = null;
      this.updatedAt = null;
      this.embeddedType = _OperationEmbedded.default;
      this.linksType = _OperationLinks.default;
      this.signatureType = _OperationSignature.default;
    }
    /**
     * Constructs a "Operation" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Operation } object Optional instance to populate.
     * @return { module:model/Operation } The populated "Operation" instance.
     */

    _createClass(Operation, null, [
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
            object = new Operation();
          }

          if (data.hasOwnProperty("_embedded")) {
            object.embedded = _ApiClient.default.convertToType(
              data["_embedded"],
              object.embeddedType
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("identificationNumber")) {
            object.identificationNumber = _ApiClient.default.convertToType(
              data["identificationNumber"],
              "String"
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("scheduledAt")) {
            object.scheduledAt = _ApiClient.default.convertToType(
              data["scheduledAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("signature")) {
            object.signature = _ApiClient.default.convertToType(
              data["signature"],
              object.signatureType
            );
          }

          if (data.hasOwnProperty("state")) {
            object.state = _ApiClient.default.convertToType(
              data["state"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]);

    return Operation;
  })();

exports.default = Operation;
