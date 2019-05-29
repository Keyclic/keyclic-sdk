"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _Organization = _interopRequireDefault(require("../model/Organization"));

var _OrganizationData = _interopRequireDefault(
  require("../model/OrganizationData")
);

var _OrganizationPagination = _interopRequireDefault(
  require("../model/OrganizationPagination")
);

var _OrganizationPatch = _interopRequireDefault(
  require("../model/OrganizationPatch")
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
 * Organization service.
 * @module api/OrganizationApi
 */
var OrganizationApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(OrganizationApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function OrganizationApi() {
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

      _classCallCheck(this, OrganizationApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(OrganizationApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Organization resources.
     * @param { String } xKeyclicApp
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { OrganizationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { String } businessActivity The identifier of the resource formatted as GUID string.
     * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { String } query
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { String } searchAlternateName
     * @param { String } searchBillingEmailAddress
     * @param { String } searchDescription
     * @param { String } searchName
     * @param { String } searchNotificationEmailAddress
     */

    _createClass(OrganizationApi, [
      {
        key: "cgetOrganizations",
        value: function cgetOrganizations() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _OrganizationPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            businessActivity = options.businessActivity,
            geoCoordinates = options.geoCoordinates,
            geoPoint = options.geoPoint,
            organization = options.organization,
            query = options.query,
            page = options.page,
            limit = options.limit,
            order = options.order,
            after = options.after,
            before = options.before,
            searchAlternateName = options.searchAlternateName,
            searchBillingEmailAddress = options.searchBillingEmailAddress,
            searchDescription = options.searchDescription,
            searchName = options.searchName,
            searchNotificationEmailAddress =
              options.searchNotificationEmailAddress; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetOrganizations'
            );
          } // verify the default value of parameter 'acceptLanguage'

          if (
            typeof acceptLanguage === "undefined" ||
            acceptLanguage === null
          ) {
            acceptLanguage = "fr-FR";
          } // verify the default value of parameter 'page'

          if (typeof page === "undefined" || page === null) {
            page = 1;
          } // verify the default value of parameter 'limit'

          if (typeof limit === "undefined" || limit === null) {
            limit = 10;
          } // verify the default value of parameter 'order'

          if (typeof order === "undefined" || order === null) {
            order = "desc";
          } // verify the null value of parameter 'xKeyclicAppVersion'

          if (typeof xKeyclicAppVersion === "undefined") {
            xKeyclicAppVersion = null;
          } // verify the null value of parameter 'businessActivity'

          if (typeof businessActivity === "undefined") {
            businessActivity = null;
          } // verify the null value of parameter 'geoCoordinates'

          if (typeof geoCoordinates === "undefined") {
            geoCoordinates = null;
          } // verify the null value of parameter 'geoPoint'

          if (typeof geoPoint === "undefined") {
            geoPoint = null;
          } // verify the null value of parameter 'organization'

          if (typeof organization === "undefined") {
            organization = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'searchAlternateName'

          if (typeof searchAlternateName === "undefined") {
            searchAlternateName = null;
          } // verify the null value of parameter 'searchBillingEmailAddress'

          if (typeof searchBillingEmailAddress === "undefined") {
            searchBillingEmailAddress = null;
          } // verify the null value of parameter 'searchDescription'

          if (typeof searchDescription === "undefined") {
            searchDescription = null;
          } // verify the null value of parameter 'searchName'

          if (typeof searchName === "undefined") {
            searchName = null;
          } // verify the null value of parameter 'searchNotificationEmailAddress'

          if (typeof searchNotificationEmailAddress === "undefined") {
            searchNotificationEmailAddress = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling cgetOrganizations'
            );
          }

          var pathParams = {};
          var bodyParam = null;
          var queryParams = {
            business_activity: businessActivity,
            geo_coordinates: geoCoordinates,
            geo_point: geoPoint,
            organization: organization,
            query: query,
            page: page,
            limit: limit,
            order: order,
            after: after,
            before: before,
            "search[alternateName]": searchAlternateName,
            "search[billingEmailAddress]": searchBillingEmailAddress,
            "search[description]": searchDescription,
            "search[name]": searchName,
            "search[notificationEmailAddress]": searchNotificationEmailAddress
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
            "/organizations",
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
         * Retrieve one Organization resource.
         * @param { String } xKeyclicApp
         * @param { String } organization The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Organization.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            organization = options.organization,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getOrganization'
            );
          } // verify the required parameter 'organization' is set

          if (typeof organization === "undefined" || organization === null) {
            throw new window.Error(
              'Missing the required parameter "organization" when calling getOrganization'
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
              'Missing the required parameter "credentials" when calling getOrganization'
            );
          }

          var pathParams = {
            organization: organization
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
            "/organizations/{organization}",
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
         * Edit one Organization resource.
         * @param { String } xKeyclicApp
         * @param { module:model/OrganizationPatch } organizationPatch
         * @param { String } organization The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "patchOrganization",
        value: function patchOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Organization.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            organizationPatch = options.organizationPatch,
            organization = options.organization,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchOrganization'
            );
          } // verify the required parameter 'organizationPatch' is set

          if (
            typeof organizationPatch === "undefined" ||
            organizationPatch === null
          ) {
            throw new window.Error(
              'Missing the required parameter "organizationPatch" when calling patchOrganization'
            );
          } // verify the required parameter 'organization' is set

          if (typeof organization === "undefined" || organization === null) {
            throw new window.Error(
              'Missing the required parameter "organization" when calling patchOrganization'
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
              'Missing the required parameter "credentials" when calling patchOrganization'
            );
          }

          var pathParams = {
            organization: organization
          };
          var bodyParam = organizationPatch;
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
            "/organizations/{organization}",
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
         * Create one Organization resource.
         * @param { String } xKeyclicApp
         * @param { module:model/OrganizationData } organizationData
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postOrganization",
        value: function postOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Organization.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            organizationData = options.organizationData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postOrganization'
            );
          } // verify the required parameter 'organizationData' is set

          if (
            typeof organizationData === "undefined" ||
            organizationData === null
          ) {
            throw new window.Error(
              'Missing the required parameter "organizationData" when calling postOrganization'
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
              'Missing the required parameter "credentials" when calling postOrganization'
            );
          }

          var pathParams = {};
          var bodyParam = organizationData;
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
            "/organizations",
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

    return OrganizationApi;
  })(_ApiClient2.default);

exports.default = OrganizationApi;
