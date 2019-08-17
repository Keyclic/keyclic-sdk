"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _Feedback = _interopRequireDefault(require("../model/Feedback"));

var _FeedbackStatePatch = _interopRequireDefault(
  require("../model/FeedbackStatePatch")
);

var _Operation = _interopRequireDefault(require("../model/Operation"));

var _OperationStatePatch = _interopRequireDefault(
  require("../model/OperationStatePatch")
);

var _Report = _interopRequireDefault(require("../model/Report"));

var _ReportStatePatch = _interopRequireDefault(
  require("../model/ReportStatePatch")
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
 * State service.
 * @module api/StateApi
 */
var StateApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(StateApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function StateApi() {
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

      _classCallCheck(this, StateApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(StateApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Edit one State resource.
     * @param { String } xKeyclicApp
     * @param { String } feedback The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/FeedbackStatePatch } feedbackStatePatch
     */

    _createClass(StateApi, [
      {
        key: "patchStateByFeedback",
        value: function patchStateByFeedback() {
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
            feedback = options.feedback,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            feedbackStatePatch = options.feedbackStatePatch; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchStateByFeedback'
            );
          } // verify the required parameter 'feedback' is set

          if (typeof feedback === "undefined" || feedback === null) {
            throw new window.Error(
              'Missing the required parameter "feedback" when calling patchStateByFeedback'
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
          } // verify the null value of parameter 'feedbackStatePatch'

          if (typeof feedbackStatePatch === "undefined") {
            feedbackStatePatch = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling patchStateByFeedback'
            );
          }

          var pathParams = {
            feedback: feedback
          };
          var bodyParam = feedbackStatePatch;
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
            "/feedbacks/{feedback}/state",
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
         * Edit one State resource.
         * @param { String } xKeyclicApp
         * @param { String } operation The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Operation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/OperationStatePatch } operationStatePatch
         */
      },
      {
        key: "patchStateByOperation",
        value: function patchStateByOperation() {
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
            operation = options.operation,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            operationStatePatch = options.operationStatePatch; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchStateByOperation'
            );
          } // verify the required parameter 'operation' is set

          if (typeof operation === "undefined" || operation === null) {
            throw new window.Error(
              'Missing the required parameter "operation" when calling patchStateByOperation'
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
          } // verify the null value of parameter 'operationStatePatch'

          if (typeof operationStatePatch === "undefined") {
            operationStatePatch = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling patchStateByOperation'
            );
          }

          var pathParams = {
            operation: operation
          };
          var bodyParam = operationStatePatch;
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
            "/operations/{operation}/state",
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
         * Edit one State resource.
         * @param { String } xKeyclicApp
         * @param { String } report The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/ReportStatePatch } reportStatePatch
         */
      },
      {
        key: "patchStateByReport",
        value: function patchStateByReport() {
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
            report = options.report,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            reportStatePatch = options.reportStatePatch; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchStateByReport'
            );
          } // verify the required parameter 'report' is set

          if (typeof report === "undefined" || report === null) {
            throw new window.Error(
              'Missing the required parameter "report" when calling patchStateByReport'
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
          } // verify the null value of parameter 'reportStatePatch'

          if (typeof reportStatePatch === "undefined") {
            reportStatePatch = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling patchStateByReport'
            );
          }

          var pathParams = {
            report: report
          };
          var bodyParam = reportStatePatch;
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
            "/reports/{report}/state",
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
      }
    ]);

    return StateApi;
  })(_ApiClient2.default);

exports.default = StateApi;
