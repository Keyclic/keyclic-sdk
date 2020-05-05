"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _ExternalService = _interopRequireDefault(
  require("../model/ExternalService")
);

var _ExternalServiceData = _interopRequireDefault(
  require("../model/ExternalServiceData")
);

var _ExternalServicePatch = _interopRequireDefault(
  require("../model/ExternalServicePatch")
);

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

function _createSuper(Derived) {
  var hasNativeReflectConstruct = _isNativeReflectConstruct();
  return function() {
    var Super = _getPrototypeOf(Derived),
      result;
    if (hasNativeReflectConstruct) {
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

/**
 * ExternalService service.
 * @module api/ExternalServiceApi
 */
var ExternalServiceApi = /*#__PURE__*/ (function(_ApiClient) {
  _inherits(ExternalServiceApi, _ApiClient);

  var _super = _createSuper(ExternalServiceApi);

  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  function ExternalServiceApi() {
    var basePath =
      arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : null;
    var headers =
      arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
    var timeout =
      arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : null;

    _classCallCheck(this, ExternalServiceApi);

    return _super.call(this, basePath, headers, timeout);
  }
  /**
   * Remove one ExternalService resource.
   * @param { String } xKeyclicApp
   * @param { String } externalService The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */

  _createClass(ExternalServiceApi, [
    {
      key: "deleteExternalService",
      value: function deleteExternalService() {
        var returnType =
          arguments.length > 0 && arguments[0] !== undefined
            ? arguments[0]
            : null;
        var options = arguments.length > 1 ? arguments[1] : undefined;
        var credentials =
          arguments.length > 2 && arguments[2] !== undefined
            ? arguments[2]
            : null;
        var xKeyclicApp = options.xKeyclicApp,
          externalService = options.externalService,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling deleteExternalService'
          );
        } // verify the required parameter 'externalService' is set

        if (
          typeof externalService === "undefined" ||
          externalService === null
        ) {
          throw new window.Error(
            'Missing the required parameter "externalService" when calling deleteExternalService'
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
          externalService: externalService
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
          "/external-services/{externalService}",
          "DELETE",
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
       * Retrieve one ExternalService resource.
       * @param { String } xKeyclicApp
       * @param { String } externalService The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { ExternalService }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "getExternalService",
      value: function getExternalService() {
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
          returnType = _ExternalService.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          externalService = options.externalService,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getExternalService'
          );
        } // verify the required parameter 'externalService' is set

        if (
          typeof externalService === "undefined" ||
          externalService === null
        ) {
          throw new window.Error(
            'Missing the required parameter "externalService" when calling getExternalService'
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
          externalService: externalService
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
          "/external-services/{externalService}",
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
      /**
       * Edit one ExternalService resource.
       * @param { String } xKeyclicApp
       * @param { module:model/ExternalServicePatch } externalServicePatch
       * @param { String } externalService The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { ExternalService }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "patchExternalService",
      value: function patchExternalService() {
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
          returnType = _ExternalService.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          externalServicePatch = options.externalServicePatch,
          externalService = options.externalService,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling patchExternalService'
          );
        } // verify the required parameter 'externalServicePatch' is set

        if (
          typeof externalServicePatch === "undefined" ||
          externalServicePatch === null
        ) {
          throw new window.Error(
            'Missing the required parameter "externalServicePatch" when calling patchExternalService'
          );
        } // verify the required parameter 'externalService' is set

        if (
          typeof externalService === "undefined" ||
          externalService === null
        ) {
          throw new window.Error(
            'Missing the required parameter "externalService" when calling patchExternalService'
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
          externalService: externalService
        };
        var bodyParam = externalServicePatch;
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
          "/external-services/{externalService}",
          "PATCH",
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
       * Create one ExternalService resource.
       * @param { String } xKeyclicApp
       * @param { module:model/ExternalServiceData } externalServiceData
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { ExternalService }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "postExternalService",
      value: function postExternalService() {
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
          returnType = _ExternalService.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          externalServiceData = options.externalServiceData,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling postExternalService'
          );
        } // verify the required parameter 'externalServiceData' is set

        if (
          typeof externalServiceData === "undefined" ||
          externalServiceData === null
        ) {
          throw new window.Error(
            'Missing the required parameter "externalServiceData" when calling postExternalService'
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

        var pathParams = {};
        var bodyParam = externalServiceData;
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
          "/external-services",
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

  return ExternalServiceApi;
})(_ApiClient2.default);

exports.default = ExternalServiceApi;
