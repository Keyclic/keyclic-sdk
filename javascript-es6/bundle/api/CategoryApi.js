"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Category = _interopRequireDefault(require("../model/Category"));

var _CategoryData = _interopRequireDefault(require("../model/CategoryData"));

var _CategoryPagination = _interopRequireDefault(
  require("../model/CategoryPagination")
);

var _CategoryPatch = _interopRequireDefault(require("../model/CategoryPatch"));

var _Error = _interopRequireDefault(require("../model/Error"));

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
 * Category service.
 * @module api/CategoryApi
 */
var CategoryApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(CategoryApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function CategoryApi() {
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

      _classCallCheck(this, CategoryApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(CategoryApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Category resources.
     * @param { String } xKeyclicApp
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { CategoryPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { String } businessActivity The identifier of the resource formatted as GUID string.
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param { String } query
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { String } searchColor
     * @param { String } searchIcon
     * @param { String } searchName
     * @param { String } searchIdentificationNumber
     */

    _createClass(CategoryApi, [
      {
        key: "cgetCategories",
        value: function cgetCategories() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _CategoryPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            businessActivity = options.businessActivity,
            organization = options.organization,
            geoCoordinates = options.geoCoordinates,
            geoPoint = options.geoPoint,
            query = options.query,
            page = options.page,
            limit = options.limit,
            order = options.order,
            after = options.after,
            before = options.before,
            searchColor = options.searchColor,
            searchIcon = options.searchIcon,
            searchName = options.searchName,
            searchIdentificationNumber = options.searchIdentificationNumber; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetCategories'
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
          } // verify the null value of parameter 'organization'

          if (typeof organization === "undefined") {
            organization = null;
          } // verify the null value of parameter 'geoCoordinates'

          if (typeof geoCoordinates === "undefined") {
            geoCoordinates = null;
          } // verify the null value of parameter 'geoPoint'

          if (typeof geoPoint === "undefined") {
            geoPoint = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'searchColor'

          if (typeof searchColor === "undefined") {
            searchColor = null;
          } // verify the null value of parameter 'searchIcon'

          if (typeof searchIcon === "undefined") {
            searchIcon = null;
          } // verify the null value of parameter 'searchName'

          if (typeof searchName === "undefined") {
            searchName = null;
          } // verify the null value of parameter 'searchIdentificationNumber'

          if (typeof searchIdentificationNumber === "undefined") {
            searchIdentificationNumber = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling cgetCategories'
            );
          }

          var pathParams = {};
          var bodyParam = null;
          var queryParams = {
            business_activity: businessActivity,
            organization: organization,
            geo_coordinates: geoCoordinates,
            geo_point: geoPoint,
            query: query,
            page: page,
            limit: limit,
            order: order,
            after: after,
            before: before,
            "search[color]": searchColor,
            "search[icon]": searchIcon,
            "search[name]": searchName,
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
            "/categories",
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
         * Retrieve all Category resources.
         * @param { String } xKeyclicApp
         * @param { String } organization The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { CategoryPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { String } businessActivity The identifier of the resource formatted as GUID string.
         * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
         * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
         * @param { String } query
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         * @param { module:model/String } order   (default to desc)
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { String } searchColor
         * @param { String } searchIcon
         * @param { String } searchName
         * @param { String } searchIdentificationNumber
         */
      },
      {
        key: "cgetCategoriesByOrganization",
        value: function cgetCategoriesByOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _CategoryPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            organization = options.organization,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            businessActivity = options.businessActivity,
            geoCoordinates = options.geoCoordinates,
            geoPoint = options.geoPoint,
            query = options.query,
            page = options.page,
            limit = options.limit,
            order = options.order,
            after = options.after,
            before = options.before,
            searchColor = options.searchColor,
            searchIcon = options.searchIcon,
            searchName = options.searchName,
            searchIdentificationNumber = options.searchIdentificationNumber; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetCategoriesByOrganization'
            );
          } // verify the required parameter 'organization' is set

          if (typeof organization === "undefined" || organization === null) {
            throw new window.Error(
              'Missing the required parameter "organization" when calling cgetCategoriesByOrganization'
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
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'searchColor'

          if (typeof searchColor === "undefined") {
            searchColor = null;
          } // verify the null value of parameter 'searchIcon'

          if (typeof searchIcon === "undefined") {
            searchIcon = null;
          } // verify the null value of parameter 'searchName'

          if (typeof searchName === "undefined") {
            searchName = null;
          } // verify the null value of parameter 'searchIdentificationNumber'

          if (typeof searchIdentificationNumber === "undefined") {
            searchIdentificationNumber = null;
          }

          if (typeof credentials === "undefined" || credentials === null) {
            throw new window.Error(
              'Missing the required parameter "credentials" when calling cgetCategoriesByOrganization'
            );
          }

          var pathParams = {
            organization: organization
          };
          var bodyParam = null;
          var queryParams = {
            business_activity: businessActivity,
            geo_coordinates: geoCoordinates,
            geo_point: geoPoint,
            query: query,
            page: page,
            limit: limit,
            order: order,
            after: after,
            before: before,
            "search[color]": searchColor,
            "search[icon]": searchIcon,
            "search[name]": searchName,
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
            "/organizations/{organization}/categories",
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
         * Retrieve one Category resource.
         * @param { String } xKeyclicApp
         * @param { String } category The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getCategory",
        value: function getCategory() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Category.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            category = options.category,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getCategory'
            );
          } // verify the required parameter 'category' is set

          if (typeof category === "undefined" || category === null) {
            throw new window.Error(
              'Missing the required parameter "category" when calling getCategory'
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
              'Missing the required parameter "credentials" when calling getCategory'
            );
          }

          var pathParams = {
            category: category
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
            "/categories/{category}",
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
         * Edit one Category resource.
         * @param { String } xKeyclicApp
         * @param { module:model/CategoryPatch } categoryPatch
         * @param { String } category The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "patchCategory",
        value: function patchCategory() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Category.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            categoryPatch = options.categoryPatch,
            category = options.category,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchCategory'
            );
          } // verify the required parameter 'categoryPatch' is set

          if (typeof categoryPatch === "undefined" || categoryPatch === null) {
            throw new window.Error(
              'Missing the required parameter "categoryPatch" when calling patchCategory'
            );
          } // verify the required parameter 'category' is set

          if (typeof category === "undefined" || category === null) {
            throw new window.Error(
              'Missing the required parameter "category" when calling patchCategory'
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
              'Missing the required parameter "credentials" when calling patchCategory'
            );
          }

          var pathParams = {
            category: category
          };
          var bodyParam = categoryPatch;
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
            "/categories/{category}",
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
         * Create one Category resource.
         * @param { String } xKeyclicApp
         * @param { module:model/CategoryData } categoryData
         * @param { String } organization The identifier of the resource formatted as GUID string.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postCategoryByOrganization",
        value: function postCategoryByOrganization() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = _Category.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            categoryData = options.categoryData,
            organization = options.organization,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postCategoryByOrganization'
            );
          } // verify the required parameter 'categoryData' is set

          if (typeof categoryData === "undefined" || categoryData === null) {
            throw new window.Error(
              'Missing the required parameter "categoryData" when calling postCategoryByOrganization'
            );
          } // verify the required parameter 'organization' is set

          if (typeof organization === "undefined" || organization === null) {
            throw new window.Error(
              'Missing the required parameter "organization" when calling postCategoryByOrganization'
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
              'Missing the required parameter "credentials" when calling postCategoryByOrganization'
            );
          }

          var pathParams = {
            organization: organization
          };
          var bodyParam = categoryData;
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
            "/organizations/{organization}/categories",
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

    return CategoryApi;
  })(_ApiClient2.default);

exports.default = CategoryApi;