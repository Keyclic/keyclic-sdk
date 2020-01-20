"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Delegation = _interopRequireDefault(require("../model/Delegation"));

var _DelegationData = _interopRequireDefault(
  require("../model/DelegationData")
);

var _Error = _interopRequireDefault(require("../model/Error"));

var _WorkflowData = _interopRequireDefault(require("../model/WorkflowData"));

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
 * Delegation service.
 * @module api/DelegationApi
 */
var DelegationApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(DelegationApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function DelegationApi() {
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

      _classCallCheck(this, DelegationApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(DelegationApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve one Delegation resource.
     * @param { String } xKeyclicApp
     * @param { String } delegation The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Delegation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { Date } xDateTime
     * @param { String } xKeyclicAppVersion
     */

    _createClass(DelegationApi, [
      {
        key: "getDelegation",
        value: function getDelegation() {
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
            returnType = _Delegation.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            delegation = options.delegation,
            acceptLanguage = options.acceptLanguage,
            xDateTime = options.xDateTime,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getDelegation'
            );
          } // verify the required parameter 'delegation' is set

          if (typeof delegation === "undefined" || delegation === null) {
            throw new window.Error(
              'Missing the required parameter "delegation" when calling getDelegation'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xDateTime'

          if (typeof xDateTime === "undefined") {
            xDateTime = null;
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {
            delegation: delegation
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
            "/delegations/{delegation}",
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
         * Create one Delegation resource.
         * @param { String } xKeyclicApp
         * @param { module:model/DelegationData } delegationData
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Delegation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { Date } xDateTime
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postDelegation",
        value: function postDelegation() {
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
            returnType = _Delegation.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            delegationData = options.delegationData,
            acceptLanguage = options.acceptLanguage,
            xDateTime = options.xDateTime,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postDelegation'
            );
          } // verify the required parameter 'delegationData' is set

          if (
            typeof delegationData === "undefined" ||
            delegationData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "delegationData" when calling postDelegation'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xDateTime'

          if (typeof xDateTime === "undefined") {
            xDateTime = null;
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {};
          var bodyParam = delegationData;
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
            "/delegations",
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
         * Create one Workflow resource.
         * @param { String } xKeyclicApp
         * @param { module:model/WorkflowData } workflowData
         * @param { String } delegation The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Delegation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { Date } xDateTime
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postWorkflowByDelegation",
        value: function postWorkflowByDelegation() {
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
            returnType = _Delegation.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            workflowData = options.workflowData,
            delegation = options.delegation,
            acceptLanguage = options.acceptLanguage,
            xDateTime = options.xDateTime,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postWorkflowByDelegation'
            );
          } // verify the required parameter 'workflowData' is set

          if (typeof workflowData === "undefined" || workflowData === null) {
            throw new window.Error(
              'Missing the required parameter "workflowData" when calling postWorkflowByDelegation'
            );
          } // verify the required parameter 'delegation' is set

          if (typeof delegation === "undefined" || delegation === null) {
            throw new window.Error(
              'Missing the required parameter "delegation" when calling postWorkflowByDelegation'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the null value of parameter 'xDateTime'

          if (typeof xDateTime === "undefined") {
            xDateTime = null;
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          }

          var pathParams = {
            delegation: delegation
          };
          var bodyParam = workflowData;
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
            "/delegations/{delegation}/workflow",
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

    return DelegationApi;
  })(_ApiClient2.default);

exports.default = DelegationApi;
