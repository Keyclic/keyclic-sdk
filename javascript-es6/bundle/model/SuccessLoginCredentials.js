"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SuccessLoginCredentialsAdministratorOf = _interopRequireDefault(
  require("./SuccessLoginCredentialsAdministratorOf")
);

var _SuccessLoginCredentialsMemberOf = _interopRequireDefault(
  require("./SuccessLoginCredentialsMemberOf")
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
 * The SuccessLoginCredentials model module.
 * @module model/SuccessLoginCredentials
 */
var SuccessLoginCredentials =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "SuccessLoginCredentials".
   * @alias module:model/SuccessLoginCredentials
   * @class
  
   */
    function SuccessLoginCredentials() {
      _classCallCheck(this, SuccessLoginCredentials);

      this.id = null;
      this.login = null;
      this.roles = [];
      this.administratorOf = [];
      this.memberOf = [];
      this.administratorOfType =
        _SuccessLoginCredentialsAdministratorOf.default;
      this.memberOfType = _SuccessLoginCredentialsMemberOf.default;
    }
    /**
     * Constructs a "SuccessLoginCredentials" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/SuccessLoginCredentials } object Optional instance to populate.
     * @return { module:model/SuccessLoginCredentials } The populated "SuccessLoginCredentials" instance.
     */

    _createClass(SuccessLoginCredentials, null, [
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
            object = new SuccessLoginCredentials();
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("login")) {
            object.login = _ApiClient.default.convertToType(
              data["login"],
              "String"
            );
          }

          if (data.hasOwnProperty("roles")) {
            object.roles = _ApiClient.default.convertToType(
              data["roles"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("administratorOf")) {
            object.administratorOf = _ApiClient.default.convertToType(
              data["administratorOf"],
              [object.administratorOfType]
            );
          }

          if (data.hasOwnProperty("memberOf")) {
            object.memberOf = _ApiClient.default.convertToType(
              data["memberOf"],
              [object.memberOfType]
            );
          }

          return object;
        }
      }
    ]);

    return SuccessLoginCredentials;
  })();

exports.default = SuccessLoginCredentials;
