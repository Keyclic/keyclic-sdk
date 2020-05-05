"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _DelegationPagination = _interopRequireDefault(
  require("../model/DelegationPagination")
);

var _Document = _interopRequireDefault(require("../model/Document"));

var _DocumentData = _interopRequireDefault(require("../model/DocumentData"));

var _DocumentPagination = _interopRequireDefault(
  require("../model/DocumentPagination")
);

var _Error = _interopRequireDefault(require("../model/Error"));

var _OperationPagination = _interopRequireDefault(
  require("../model/OperationPagination")
);

var _Report = _interopRequireDefault(require("../model/Report"));

var _ReportPatch = _interopRequireDefault(require("../model/ReportPatch"));

var _Tracking = _interopRequireDefault(require("../model/Tracking"));

var _WorkflowData = _interopRequireDefault(require("../model/WorkflowData"));

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
 * Report service.
 * @module api/ReportApi
 */
var ReportApi = /*#__PURE__*/ (function(_ApiClient) {
  _inherits(ReportApi, _ApiClient);

  var _super = _createSuper(ReportApi);

  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  function ReportApi() {
    var basePath =
      arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : null;
    var headers =
      arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;
    var timeout =
      arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : null;

    _classCallCheck(this, ReportApi);

    return _super.call(this, basePath, headers, timeout);
  }
  /**
   * Retrieve all Delegation resources.
   * @param { String } xKeyclicApp
   * @param { String } report The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { DelegationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { module:model/String } order   (default to desc)
   * @param { String } state
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */

  _createClass(ReportApi, [
    {
      key: "cgetDelegationsByReport",
      value: function cgetDelegationsByReport() {
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
          returnType = _DelegationPagination.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion,
          after = options.after,
          before = options.before,
          order = options.order,
          state = options.state,
          page = options.page,
          limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling cgetDelegationsByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling cgetDelegationsByReport'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the default value of parameter 'order'

        if (typeof order === "undefined" || order === null) {
          order = "desc";
        } // verify the default value of parameter 'page'

        if (typeof page === "undefined" || page === null) {
          page = 1;
        } // verify the default value of parameter 'limit'

        if (typeof limit === "undefined" || limit === null) {
          limit = 10;
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        } // verify the null value of parameter 'after'

        if (typeof after === "undefined") {
          after = null;
        } // verify the null value of parameter 'before'

        if (typeof before === "undefined") {
          before = null;
        } // verify the null value of parameter 'state'

        if (typeof state === "undefined") {
          state = null;
        }

        var pathParams = {
          report: report
        };
        var bodyParam = null;
        var queryParams = {
          after: after,
          before: before,
          order: order,
          state: state,
          page: page,
          limit: limit
        };
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
          "/reports/{report}/delegations",
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
       * Retrieve all Document resources.
       * @param { String } xKeyclicApp
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { DocumentPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       * @param { module:model/Date } after
       * @param { module:model/Date } before
       * @param { module:model/String } order   (default to desc)
       * @param { Number } page Page of the overview.  (default to 1)
       * @param { Number } limit Page of the overview.  (default to 10)
       */
    },
    {
      key: "cgetDocumentsByReport",
      value: function cgetDocumentsByReport() {
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
          returnType = _DocumentPagination.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion,
          after = options.after,
          before = options.before,
          order = options.order,
          page = options.page,
          limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling cgetDocumentsByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling cgetDocumentsByReport'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the default value of parameter 'order'

        if (typeof order === "undefined" || order === null) {
          order = "desc";
        } // verify the default value of parameter 'page'

        if (typeof page === "undefined" || page === null) {
          page = 1;
        } // verify the default value of parameter 'limit'

        if (typeof limit === "undefined" || limit === null) {
          limit = 10;
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        } // verify the null value of parameter 'after'

        if (typeof after === "undefined") {
          after = null;
        } // verify the null value of parameter 'before'

        if (typeof before === "undefined") {
          before = null;
        }

        var pathParams = {
          report: report
        };
        var bodyParam = null;
        var queryParams = {
          after: after,
          before: before,
          order: order,
          page: page,
          limit: limit
        };
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
          "/reports/{report}/documents",
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
       * Retrieve all Operation resources.
       * @param { String } xKeyclicApp
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { OperationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       * @param { String } assignedTo The identifier of the resource.
       * @param { module:model/Date } after
       * @param { module:model/Date } before
       * @param { module:model/String } order   (default to desc)
       * @param { String } organization The identifier of the resource.
       * @param { String } query
       * @param { String } state
       * @param { Number } page Page of the overview.  (default to 1)
       * @param { Number } limit Page of the overview.  (default to 10)
       */
    },
    {
      key: "cgetOperationsByReport",
      value: function cgetOperationsByReport() {
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
          returnType = _OperationPagination.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion,
          assignedTo = options.assignedTo,
          after = options.after,
          before = options.before,
          order = options.order,
          organization = options.organization,
          query = options.query,
          state = options.state,
          page = options.page,
          limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling cgetOperationsByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling cgetOperationsByReport'
          );
        } // verify the default value of parameter 'acceptLanguage'

        if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
          acceptLanguage = "fr-FR";
        } // verify the default value of parameter 'order'

        if (typeof order === "undefined" || order === null) {
          order = "desc";
        } // verify the default value of parameter 'page'

        if (typeof page === "undefined" || page === null) {
          page = 1;
        } // verify the default value of parameter 'limit'

        if (typeof limit === "undefined" || limit === null) {
          limit = 10;
        } // verify the null value of parameter 'xDateTime'

        if (typeof xDateTime === "undefined") {
          xDateTime = null;
        } // verify the null value of parameter 'xKeyclicAppVersion'

        if (typeof xKeyclicAppVersion === "undefined") {
          xKeyclicAppVersion = null;
        } // verify the null value of parameter 'assignedTo'

        if (typeof assignedTo === "undefined") {
          assignedTo = null;
        } // verify the null value of parameter 'after'

        if (typeof after === "undefined") {
          after = null;
        } // verify the null value of parameter 'before'

        if (typeof before === "undefined") {
          before = null;
        } // verify the null value of parameter 'organization'

        if (typeof organization === "undefined") {
          organization = null;
        } // verify the null value of parameter 'query'

        if (typeof query === "undefined") {
          query = null;
        } // verify the null value of parameter 'state'

        if (typeof state === "undefined") {
          state = null;
        }

        var pathParams = {
          report: report
        };
        var bodyParam = null;
        var queryParams = {
          assigned_to: assignedTo,
          after: after,
          before: before,
          order: order,
          organization: organization,
          query: query,
          state: state,
          page: page,
          limit: limit
        };
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
          "/reports/{report}/operations",
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
       * Retrieve one Report resource.
       * @param { String } xKeyclicApp
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "getReport",
      value: function getReport() {
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
          returnType = _Report.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling getReport'
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
          report: report
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
          "/reports/{report}",
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
       * Retrieve one Tracking resource.
       * @param { String } xKeyclicApp
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Tracking }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "getTrackingByReport",
      value: function getTrackingByReport() {
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
          returnType = _Tracking.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling getTrackingByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling getTrackingByReport'
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
          report: report
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
          "/reports/{report}/tracking",
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
       * Edit one Report resource.
       * @param { String } xKeyclicApp
       * @param { module:model/ReportPatch } reportPatch
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "patchReport",
      value: function patchReport() {
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
          returnType = _Report.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          reportPatch = options.reportPatch,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling patchReport'
          );
        } // verify the required parameter 'reportPatch' is set

        if (typeof reportPatch === "undefined" || reportPatch === null) {
          throw new window.Error(
            'Missing the required parameter "reportPatch" when calling patchReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling patchReport'
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
          report: report
        };
        var bodyParam = reportPatch;
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
          "/reports/{report}",
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
       * Create one Document resource.
       * @param { String } xKeyclicApp
       * @param { module:model/DocumentData } documentData
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Document }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "postDocumentByReport",
      value: function postDocumentByReport() {
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
          returnType = _Document.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          documentData = options.documentData,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling postDocumentByReport'
          );
        } // verify the required parameter 'documentData' is set

        if (typeof documentData === "undefined" || documentData === null) {
          throw new window.Error(
            'Missing the required parameter "documentData" when calling postDocumentByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling postDocumentByReport'
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
          report: report
        };
        var bodyParam = documentData;
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
          "/reports/{report}/documents",
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
       * @param { String } report The identifier of the resource.
       * @param { Object } credentials The required credentials with good properties to use different types of authentication.
       * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
       * @param { module:model/String } acceptLanguage   (default to fr-FR)
       * @param { Date } xDateTime
       * @param { String } xKeyclicAppVersion
       */
    },
    {
      key: "postWorkflowByReport",
      value: function postWorkflowByReport() {
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
          returnType = _Report.default;
        }

        var xKeyclicApp = options.xKeyclicApp,
          workflowData = options.workflowData,
          report = options.report,
          acceptLanguage = options.acceptLanguage,
          xDateTime = options.xDateTime,
          xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

        if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
          throw new window.Error(
            'Missing the required parameter "xKeyclicApp" when calling postWorkflowByReport'
          );
        } // verify the required parameter 'workflowData' is set

        if (typeof workflowData === "undefined" || workflowData === null) {
          throw new window.Error(
            'Missing the required parameter "workflowData" when calling postWorkflowByReport'
          );
        } // verify the required parameter 'report' is set

        if (typeof report === "undefined" || report === null) {
          throw new window.Error(
            'Missing the required parameter "report" when calling postWorkflowByReport'
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
          report: report
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
          "/reports/{report}/workflow",
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

  return ReportApi;
})(_ApiClient2.default);

exports.default = ReportApi;
