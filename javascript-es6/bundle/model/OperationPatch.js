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
 * The OperationPatch model module.
 * @module model/OperationPatch
 */
var OperationPatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationPatch".
   * @alias module:model/OperationPatch
   * @class
  
   */
    function OperationPatch() {
      _classCallCheck(this, OperationPatch);

      this.description = null;
      this.identificationNumber = null;
      this.name = null;
      this.scheduledAt = null;
    }
    /**
     * Constructs a "OperationPatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationPatch } object Optional instance to populate.
     * @return { module:model/OperationPatch } The populated "OperationPatch" instance.
     */

    _createClass(OperationPatch, null, [
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
            object = new OperationPatch();
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
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

          return object;
        }
      }
    ]);

    return OperationPatch;
  })();

exports.default = OperationPatch;
