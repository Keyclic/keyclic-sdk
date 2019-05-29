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
 * The LoginData model module.
 * @module model/LoginData
 */
var LoginData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "LoginData".
   * @alias module:model/LoginData
   * @class
  
   * @param login { String }
  
   * @param password { String }
  
   */
    function LoginData(login, password) {
      _classCallCheck(this, LoginData);

      this.login = login;
      this.password = password;
    }
    /**
     * Constructs a "LoginData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/LoginData } object Optional instance to populate.
     * @return { module:model/LoginData } The populated "LoginData" instance.
     */

    _createClass(LoginData, null, [
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
            object = new LoginData();
          }

          if (data.hasOwnProperty("login")) {
            object.login = _ApiClient.default.convertToType(
              data["login"],
              "String"
            );
          }

          if (data.hasOwnProperty("password")) {
            object.password = _ApiClient.default.convertToType(
              data["password"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return LoginData;
  })();

exports.default = LoginData;
