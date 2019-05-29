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
 * The SuccessLoginCredentialsAdministratorOf model module.
 * @module model/SuccessLoginCredentialsAdministratorOf
 */
var SuccessLoginCredentialsAdministratorOf =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "SuccessLoginCredentialsAdministratorOf".
   * @alias module:model/SuccessLoginCredentialsAdministratorOf
   * @class
  
   */
    function SuccessLoginCredentialsAdministratorOf() {
      _classCallCheck(this, SuccessLoginCredentialsAdministratorOf);

      this.id = null;
      this.token = null;
      this.type = null;
    }
    /**
     * Constructs a "SuccessLoginCredentialsAdministratorOf" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/SuccessLoginCredentialsAdministratorOf } object Optional instance to populate.
     * @return { module:model/SuccessLoginCredentialsAdministratorOf } The populated "SuccessLoginCredentialsAdministratorOf" instance.
     */

    _createClass(SuccessLoginCredentialsAdministratorOf, null, [
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
            object = new SuccessLoginCredentialsAdministratorOf();
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("token")) {
            object.token = _ApiClient.default.convertToType(
              data["token"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return SuccessLoginCredentialsAdministratorOf;
  })();

exports.default = SuccessLoginCredentialsAdministratorOf;
