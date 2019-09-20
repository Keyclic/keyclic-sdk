"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SuccessLoginCredentials = _interopRequireDefault(
  require("./SuccessLoginCredentials")
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
 * The SuccessLogin model module.
 * @module model/SuccessLogin
 */
var SuccessLogin =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "SuccessLogin".
   * @alias module:model/SuccessLogin
   * @class
  
   */
    function SuccessLogin() {
      _classCallCheck(this, SuccessLogin);

      this.accessToken = null;
      this.credentials = null;
      this.tokenType = "Bearer";
      this.credentialsType = _SuccessLoginCredentials.default;
    }
    /**
     * Constructs a "SuccessLogin" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/SuccessLogin } object Optional instance to populate.
     * @return { module:model/SuccessLogin } The populated "SuccessLogin" instance.
     */

    _createClass(
      SuccessLogin,
      [
        {
          key: "getAccessToken",

          /**
           * @return { String }
           */
          value: function getAccessToken() {
            return this.accessToken;
          }
          /**
           * @param { String } accessToken
           */
        },
        {
          key: "setAccessToken",
          value: function setAccessToken(accessToken) {
            this.accessToken = accessToken;
          }
          /**
           * @return { module:model/SuccessLoginCredentials }
           */
        },
        {
          key: "getCredentials",
          value: function getCredentials() {
            return this.credentials;
          }
          /**
           * @param { module:model/SuccessLoginCredentials } credentials
           */
        },
        {
          key: "setCredentials",
          value: function setCredentials(credentials) {
            this.credentials = credentials;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getTokenType",
          value: function getTokenType() {
            return this.tokenType;
          }
          /**
           * @param { String } tokenType
           */
        },
        {
          key: "setTokenType",
          value: function setTokenType(tokenType) {
            this.tokenType = tokenType;
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
              object = new SuccessLogin();
            }

            if (data.hasOwnProperty("accessToken")) {
              object.accessToken = _ApiClient.default.convertToType(
                data["accessToken"],
                "String"
              );
            }

            if (data.hasOwnProperty("credentials")) {
              object.credentials = _ApiClient.default.convertToType(
                data["credentials"],
                object.credentialsType
              );
            }

            if (data.hasOwnProperty("tokenType")) {
              object.tokenType = _ApiClient.default.convertToType(
                data["tokenType"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return SuccessLogin;
  })();

exports.default = SuccessLogin;
