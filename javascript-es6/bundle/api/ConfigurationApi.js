"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Configuration = _interopRequireDefault(require("../model/Configuration"));

var _Error = _interopRequireDefault(require("../model/Error"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
}

function _typeof(obj) {
  "@babel/helpers - typeof";
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

function _createSuper(Derived) {
  return function() {
    var Super = _getPrototypeOf(Derived),
      result;
    if (_isNativeReflectConstruct()) {
      var NewTarget = _getPrototypeOf(this).constructor;
      result = Reflect.construct(Super, arguments, NewTarget);
    } else {
      result = Super.apply(this, arguments);
    }
    return _possibleConstructorReturn(this, result);
  };
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

function _isNativeReflectConstruct() {
  if (typeof Reflect === "undefined" || !Reflect.construct) return false;
  if (Reflect.construct.sham) return false;
  if (typeof Proxy === "function") return true;
  try {
    Date.prototype.toString.call(Reflect.construct(Date, [], function() {}));
    return true;
  } catch (e) {
    return false;
  }
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
 * Configuration service.
 * @module api/ConfigurationApi
 */
var ConfigurationApi = /*#__PURE__*/ (function(_ApiClient) {
  _inherits(ConfigurationApi, _ApiClient);

  var _super = _createSuper(ConfigurationApi);

  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  function ConfigurationApi() {
    var basePath =
      arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : null;
    var headers =
      arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
    var timeout =
      arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : null;

    _classCallCheck(this, ConfigurationApi);

    return _super.call(this, basePath, headers, timeout);
  }
  /**
   * Retrieve one Configuration resource.
   * @param { String } xKeyclicApp
   * @param { String } configuration The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Configuration }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */

  _createClass(ConfigurationApi, [
    {
      key: "getConfiguration",
      value: function getConfiguration() {
        var returnType =
          arguments.length > 0 && arguments[0] !== undefined
            ? arguments[0]
            : null;
        var options = arguments.length > 1 ? arguments[1] : undefined;
        var credentials =
          arguments.length > 2 && arguments[2] !== undefined
            ? arguments[2]
            : null;

        if (returnType === null) {
          returnType = _Configuration.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          configuration = options.configuration,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getConfiguration'
          );
        } // verify the required parameter 'configuration' is set

        if (typeof configuration === "undefined" || configuration === null) {
          throw new window.Error(
            'Missing the required parameter "configuration" when calling getConfiguration'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        }

        var pathParams = {
          configuration: configuration
        };
        var bodyParam = null;
        var queryParams = {};
        var headerParams = {
          "accept-language": acceptLanguage,
          "x-date-time": xDateTime,
          "x-keyclic-app": xKeyclicApp,
          "x-keyclic-app-version": xKeyclicAppVersion
        };
        var credentialParams = credentials;
        var authNames = ["bearer"];
        var contentTypes = ["application/json;charset=UTF-8"];
        var accepts = ["application/hal+json;charset=UTF-8"];
        return this.callApi(
          "/configurations/{configuration}",
          "GET",
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

  return ConfigurationApi;
})(_ApiClient2.default);

exports.default = ConfigurationApi;
