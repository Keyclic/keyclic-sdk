"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _FacebookConnectData = _interopRequireDefault(
  require("../model/FacebookConnectData")
);

var _LoginData = _interopRequireDefault(require("../model/LoginData"));

var _PasswordChangeData = _interopRequireDefault(
  require("../model/PasswordChangeData")
);

var _Person = _interopRequireDefault(require("../model/Person"));

var _RegisterData = _interopRequireDefault(require("../model/RegisterData"));

var _ResetPasswordData = _interopRequireDefault(
  require("../model/ResetPasswordData")
);

var _SuccessLogin = _interopRequireDefault(require("../model/SuccessLogin"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
}

function _typeof(obj) {
  if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
    _typeof = function _typeof(obj) {
      return typeof obj;
    };
  } else {
    _typeof = function _typeof(obj) {
      return obj &&
        typeof Symbol === "function" &&
        obj.constructor === Symbol &&
        obj !== Symbol.prototype
        ? "symbol"
        : typeof obj;
    };
  }
  return _typeof(obj);
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

function _possibleConstructorReturn(self, call) {
  if (call && (_typeof(call) === "object" || typeof call === "function")) {
    return call;
  }
  return _assertThisInitialized(self);
}

function _assertThisInitialized(self) {
  if (self === void 0) {
    throw new ReferenceError(
      "this hasn't been initialised - super() hasn't been called"
    );
  }
  return self;
}

function _getPrototypeOf(o) {
  _getPrototypeOf = Object.setPrototypeOf
    ? Object.getPrototypeOf
    : function _getPrototypeOf(o) {
        return o.__proto__ || Object.getPrototypeOf(o);
      };
  return _getPrototypeOf(o);
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function");
  }
  subClass.prototype = Object.create(superClass && superClass.prototype, {
    constructor: { value: subClass, writable: true, configurable: true }
  });
  if (superClass) _setPrototypeOf(subClass, superClass);
}

function _setPrototypeOf(o, p) {
  _setPrototypeOf =
    Object.setPrototypeOf ||
    function _setPrototypeOf(o, p) {
      o.__proto__ = p;
      return o;
    };
  return _setPrototypeOf(o, p);
}

/**
 * Security service.
 * @module api/SecurityApi
 */
var SecurityApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(SecurityApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function SecurityApi() {
      var basePath =
        arguments.length > 0 && arguments[0] !== undefined
          ? arguments[0]
          : null;
      var headers =
        arguments.length > 1 && arguments[1] !== undefined
          ? arguments[1]
          : null;
      var timeout =
        arguments.length > 2 && arguments[2] !== undefined
          ? arguments[2]
          : null;

      _classCallCheck(this, SecurityApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(SecurityApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Create one ConnectFacebook resource.
     * @param { String } xKeyclicApp
     * @param { module:model/FacebookConnectData } facebookConnectData
     * @param { SuccessLogin }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     */

    _createClass(SecurityApi, [
      {
        key: "postConnectFacebook",
        value: function postConnectFacebook() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;

          if (returnType === null) {
            returnType = _SuccessLogin.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            facebookConnectData = options.facebookConnectData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postConnectFacebook'
            );
          } // verify the required parameter 'facebookConnectData' is set

          if (
            typeof facebookConnectData === "undefined" ||
            facebookConnectData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "facebookConnectData" when calling postConnectFacebook'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {};
          var bodyParam = facebookConnectData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = null;
          var authNames = [];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/security/connect/facebook",
            "POST",
            pathParams,
            queryParams,
            headerParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
          );
        }
        /**
         * Create one Login resource.
         * @param { String } xKeyclicApp
         * @param { module:model/LoginData } loginData
         * @param { SuccessLogin }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postLogin",
        value: function postLogin() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;

          if (returnType === null) {
            returnType = _SuccessLogin.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            loginData = options.loginData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postLogin'
            );
          } // verify the required parameter 'loginData' is set

          if (typeof loginData === "undefined" || loginData === null) {
            throw new window.Error(
              'Missing the required parameter "loginData" when calling postLogin'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {};
          var bodyParam = loginData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = null;
          var authNames = [];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/security/login",
            "POST",
            pathParams,
            queryParams,
            headerParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
          );
        }
        /**
         * Create one PasswordChange resource.
         * @param { String } xKeyclicApp
         * @param { module:model/PasswordChangeData } passwordChangeData
         * @param { String } token
         * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postPasswordChangeByToken",
        value: function postPasswordChangeByToken() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var xKeyclicApp = options.xKeyclicApp,
            passwordChangeData = options.passwordChangeData,
            token = options.token,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postPasswordChangeByToken'
            );
          } // verify the required parameter 'passwordChangeData' is set

          if (
            typeof passwordChangeData === "undefined" ||
            passwordChangeData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "passwordChangeData" when calling postPasswordChangeByToken'
            );
          } // verify the required parameter 'token' is set

          if (typeof token === "undefined" || token === null) {
            throw new window.Error(
              'Missing the required parameter "token" when calling postPasswordChangeByToken'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {
            token: token
          };
          var bodyParam = passwordChangeData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = null;
          var authNames = [];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/security/password/change/{token}",
            "POST",
            pathParams,
            queryParams,
            headerParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
          );
        }
        /**
         * Create one PasswordReset resource.
         * @param { String } xKeyclicApp
         * @param { module:model/ResetPasswordData } resetPasswordData
         * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postPasswordReset",
        value: function postPasswordReset() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var xKeyclicApp = options.xKeyclicApp,
            resetPasswordData = options.resetPasswordData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postPasswordReset'
            );
          } // verify the required parameter 'resetPasswordData' is set

          if (
            typeof resetPasswordData === "undefined" ||
            resetPasswordData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "resetPasswordData" when calling postPasswordReset'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {};
          var bodyParam = resetPasswordData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = null;
          var authNames = [];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/security/password/change-request",
            "POST",
            pathParams,
            queryParams,
            headerParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
          );
        }
        /**
         * Create one Register resource.
         * @param { String } xKeyclicApp
         * @param { module:model/RegisterData } registerData
         * @param { Person }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postRegister",
        value: function postRegister() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;

          if (returnType === null) {
            returnType = _Person.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            registerData = options.registerData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postRegister'
            );
          } // verify the required parameter 'registerData' is set

          if (typeof registerData === "undefined" || registerData === null) {
            throw new window.Error(
              'Missing the required parameter "registerData" when calling postRegister'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {};
          var bodyParam = registerData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = null;
          var authNames = [];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/security/register",
            "POST",
            pathParams,
            queryParams,
            headerParams,
            bodyParam,
            authNames,
            credentialParams,
            contentTypes,
            accepts,
            returnType
          );
        }
      }
    ]);

    return SecurityApi;
  })(_ApiClient2.default);

exports.default = SecurityApi;
