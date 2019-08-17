"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Delegation = _interopRequireDefault(require("../model/Delegation"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _Feedback = _interopRequireDefault(require("../model/Feedback"));

var _FeedbackWorkflowTransitionData = _interopRequireDefault(
  require("../model/FeedbackWorkflowTransitionData")
);

var _Operation = _interopRequireDefault(require("../model/Operation"));

var _OperationWorkflowTransitionData = _interopRequireDefault(
  require("../model/OperationWorkflowTransitionData")
);

var _Report = _interopRequireDefault(require("../model/Report"));

var _ReportWorkflowTransitionData = _interopRequireDefault(
  require("../model/ReportWorkflowTransitionData")
);

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
 * Transition service.
 * @module api/TransitionApi
 */
var TransitionApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(TransitionApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function TransitionApi() {
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

      _classCallCheck(this, TransitionApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(TransitionApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Create one Transition resource.
     * @param { String } xKeyclicApp
     * @param { module:model/ReportWorkflowTransitionData } reportWorkflowTransitionData
     * @param { String } delegation The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Delegation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     */

    _createClass(TransitionApi, [
      {
        key: "postTransitionByDelegation",
        value: function postTransitionByDelegation() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Delegation.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            reportWorkflowTransitionData = options.reportWorkflowTransitionData,
            delegation = options.delegation,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postTransitionByDelegation'
            );
          } // verify the required parameter 'reportWorkflowTransitionData' is set

          if (
            typeof reportWorkflowTransitionData === "undefined" ||
            reportWorkflowTransitionData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "reportWorkflowTransitionData" when calling postTransitionByDelegation'
            );
          } // verify the required parameter 'delegation' is set

          if (typeof delegation === "undefined" || delegation === null) {
            throw new window.Error(
              'Missing the required parameter "delegation" when calling postTransitionByDelegation'
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

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling postTransitionByDelegation'
            );
          }

          var pathParams = {
            delegation: delegation
          };
          var bodyParam = reportWorkflowTransitionData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/delegations/{delegation}/workflow/transition",
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
         * Create one Transition resource.
         * @param { String } xKeyclicApp
         * @param { module:model/FeedbackWorkflowTransitionData } feedbackWorkflowTransitionData
         * @param { String } feedback The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postTransitionByFeedback",
        value: function postTransitionByFeedback() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Feedback.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            feedbackWorkflowTransitionData =
              options.feedbackWorkflowTransitionData,
            feedback = options.feedback,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postTransitionByFeedback'
            );
          } // verify the required parameter 'feedbackWorkflowTransitionData' is set

          if (
            typeof feedbackWorkflowTransitionData === "undefined" ||
            feedbackWorkflowTransitionData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "feedbackWorkflowTransitionData" when calling postTransitionByFeedback'
            );
          } // verify the required parameter 'feedback' is set

          if (typeof feedback === "undefined" || feedback === null) {
            throw new window.Error(
              'Missing the required parameter "feedback" when calling postTransitionByFeedback'
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

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling postTransitionByFeedback'
            );
          }

          var pathParams = {
            feedback: feedback
          };
          var bodyParam = feedbackWorkflowTransitionData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/feedbacks/{feedback}/workflow/transition",
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
         * Create one Transition resource.
         * @param { String } xKeyclicApp
         * @param { module:model/OperationWorkflowTransitionData } operationWorkflowTransitionData
         * @param { String } operation The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Operation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postTransitionByOperation",
        value: function postTransitionByOperation() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Operation.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            operationWorkflowTransitionData =
              options.operationWorkflowTransitionData,
            operation = options.operation,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postTransitionByOperation'
            );
          } // verify the required parameter 'operationWorkflowTransitionData' is set

          if (
            typeof operationWorkflowTransitionData === "undefined" ||
            operationWorkflowTransitionData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "operationWorkflowTransitionData" when calling postTransitionByOperation'
            );
          } // verify the required parameter 'operation' is set

          if (typeof operation === "undefined" || operation === null) {
            throw new window.Error(
              'Missing the required parameter "operation" when calling postTransitionByOperation'
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

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling postTransitionByOperation'
            );
          }

          var pathParams = {
            operation: operation
          };
          var bodyParam = operationWorkflowTransitionData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/operations/{operation}/workflow/transition",
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
         * Create one Transition resource.
         * @param { String } xKeyclicApp
         * @param { module:model/ReportWorkflowTransitionData } reportWorkflowTransitionData
         * @param { String } report The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postTransitionByReport",
        value: function postTransitionByReport() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Report.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            reportWorkflowTransitionData = options.reportWorkflowTransitionData,
            report = options.report,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postTransitionByReport'
            );
          } // verify the required parameter 'reportWorkflowTransitionData' is set

          if (
            typeof reportWorkflowTransitionData === "undefined" ||
            reportWorkflowTransitionData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "reportWorkflowTransitionData" when calling postTransitionByReport'
            );
          } // verify the required parameter 'report' is set

          if (typeof report === "undefined" || report === null) {
            throw new window.Error(
              'Missing the required parameter "report" when calling postTransitionByReport'
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

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling postTransitionByReport'
            );
          }

          var pathParams = {
            report: report
          };
          var bodyParam = reportWorkflowTransitionData;
          var queryParams = {};
          var headerParams = {
            "accept-language": acceptLanguage,
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/reports/{report}/workflow/transition",
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

    return TransitionApi;
  })(_ApiClient2.default);

exports.default = TransitionApi;
