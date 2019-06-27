"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _Report = _interopRequireDefault(require("../model/Report"));

var _ReportPagination = _interopRequireDefault(
  require("../model/ReportPagination")
);

var _ReportPatch = _interopRequireDefault(require("../model/ReportPatch"));

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
 * Report service.
 * @module api/ReportApi
 */
var ReportApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(ReportApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function ReportApi() {
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

      _classCallCheck(this, ReportApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(ReportApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Report resources.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { ReportPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { String } assignedTo The identifier of the resource formatted as GUID string.
     * @param { String } category The identifier of the resource formatted as GUID string.
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { String } delegatedTo The identifier of the resource formatted as GUID string.
     * @param { module:model/String } order   (default to desc)
     * @param { String } place The identifier of the resource formatted as GUID string.
     * @param { String } query
     * @param { String } state
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { String } searchDescription
     * @param { String } searchReference
     * @param { String } searchIdentificationNumber
     */

    _createClass(ReportApi, [
      {
        key: "cgetReportsByOrganization",
        value: function cgetReportsByOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _ReportPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            organization = options.organization,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            assignedTo = options.assignedTo,
            category = options.category,
            after = options.after,
            before = options.before,
            delegatedTo = options.delegatedTo,
            order = options.order,
            place = options.place,
            query = options.query,
            state = options.state,
            page = options.page,
            limit = options.limit,
            searchDescription = options.searchDescription,
            searchReference = options.searchReference,
            searchIdentificationNumber = options.searchIdentificationNumber; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetReportsByOrganization'
            );
          } // verify the required parameter 'organization' is set

          if (typeof organization === "undefined" || organization === null) {
            throw new window.Error(
              'Missing the required parameter "organization" when calling cgetReportsByOrganization'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
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
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          } // verify the null value of parameter 'assignedTo'

          if (typeof assignedTo === "undefined") {
            assignedTo = null;
          } // verify the null value of parameter 'category'

          if (typeof category === "undefined") {
            category = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'delegatedTo'

          if (typeof delegatedTo === "undefined") {
            delegatedTo = null;
          } // verify the null value of parameter 'place'

          if (typeof place === "undefined") {
            place = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          } // verify the null value of parameter 'state'

          if (typeof state === "undefined") {
            state = null;
          } // verify the null value of parameter 'searchDescription'

          if (typeof searchDescription === "undefined") {
            searchDescription = null;
          } // verify the null value of parameter 'searchReference'

          if (typeof searchReference === "undefined") {
            searchReference = null;
          } // verify the null value of parameter 'searchIdentificationNumber'

          if (typeof searchIdentificationNumber === "undefined") {
            searchIdentificationNumber = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling cgetReportsByOrganization'
            );
          }

          var pathParams = {
            organization: organization
          };
          var bodyParam = null;
          var queryParams = {
            assigned_to: assignedTo,
            category: category,
            after: after,
            before: before,
            delegated_to: delegatedTo,
            order: order,
            place: place,
            query: query,
            state: state,
            page: page,
            limit: limit,
            "search[description]": searchDescription,
            "search[reference]": searchReference,
            "search[identificationNumber]": searchIdentificationNumber
          };
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
            "/organizations/{organization}/reports",
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
         * @param { String } report The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
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
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Report.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            report = options.report,
            acceptLanguage = options.acceptLanguage,
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
              'Missing the required parameter "credentials" when calling getReport'
            );
          }

          var pathParams = {
            report: report
          };
          var bodyParam = null;
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
         * Edit one Report resource.
         * @param { String } xKeyclicApp
         * @param { module:model/ReportPatch } reportPatch
         * @param { String } report The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
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
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Report.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            reportPatch = options.reportPatch,
            report = options.report,
            acceptLanguage = options.acceptLanguage,
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
              'Missing the required parameter "credentials" when calling patchReport'
            );
          }

          var pathParams = {
            report: report
          };
          var bodyParam = reportPatch;
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
      }
    ]);

    return ReportApi;
  })(_ApiClient2.default);

exports.default = ReportApi;
