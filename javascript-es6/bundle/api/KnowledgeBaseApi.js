"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _ArticlePagination = _interopRequireDefault(
  require("../model/ArticlePagination")
);

var _Error = _interopRequireDefault(require("../model/Error"));

var _KnowledgeBase = _interopRequireDefault(require("../model/KnowledgeBase"));

var _SectionPagination = _interopRequireDefault(
  require("../model/SectionPagination")
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
 * KnowledgeBase service.
 * @module api/KnowledgeBaseApi
 */
var KnowledgeBaseApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(KnowledgeBaseApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function KnowledgeBaseApi() {
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

      _classCallCheck(this, KnowledgeBaseApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(KnowledgeBaseApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Article resources.
     * @param { String } xKeyclicApp
     * @param { String } knowledgeBase
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { ArticlePagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { Date } xDateTime
     * @param { String } xKeyclicAppVersion
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { module:model/String } order   (default to desc)
     * @param { String } section The identifier of the resource.
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     */

    _createClass(KnowledgeBaseApi, [
      {
        key: "cgetArticlesByKnowledgeBase",
        value: function cgetArticlesByKnowledgeBase() {
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
            returnType = _ArticlePagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            knowledgeBase = options.knowledgeBase,
            acceptLanguage = options.acceptLanguage,
            xDateTime = options.xDateTime,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            section = options.section,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetArticlesByKnowledgeBase'
            );
          } // verify the required parameter 'knowledgeBase' is set

          if (typeof knowledgeBase === "undefined" || knowledgeBase === null) {
            throw new window.Error(
              'Missing the required parameter "knowledgeBase" when calling cgetArticlesByKnowledgeBase'
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
          } // verify the null value of parameter 'section'

          if (typeof section === "undefined") {
            section = null;
          }

          var pathParams = {
            knowledgeBase: knowledgeBase
          };
          var bodyParam = null;
          var queryParams = {
            after: after,
            before: before,
            order: order,
            section: section,
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
            "/knowledge-bases/{knowledgeBase}/articles",
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
         * Retrieve all Section resources.
         * @param { String } xKeyclicApp
         * @param { String } knowledgeBase
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { SectionPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
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
        key: "cgetSectionsByKnowledgeBase",
        value: function cgetSectionsByKnowledgeBase() {
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
            returnType = _SectionPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            knowledgeBase = options.knowledgeBase,
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
              'Missing the required parameter "xKeyclicApp" when calling cgetSectionsByKnowledgeBase'
            );
          } // verify the required parameter 'knowledgeBase' is set

          if (typeof knowledgeBase === "undefined" || knowledgeBase === null) {
            throw new window.Error(
              'Missing the required parameter "knowledgeBase" when calling cgetSectionsByKnowledgeBase'
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
            knowledgeBase: knowledgeBase
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
            "/knowledge-bases/{knowledgeBase}/sections",
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
         * Retrieve one KnowledgeBase resource.
         * @param { String } xKeyclicApp
         * @param { String } knowledgeBase
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { KnowledgeBase }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { Date } xDateTime
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getKnowledgeBase",
        value: function getKnowledgeBase() {
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
            returnType = _KnowledgeBase.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            knowledgeBase = options.knowledgeBase,
            acceptLanguage = options.acceptLanguage,
            xDateTime = options.xDateTime,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getKnowledgeBase'
            );
          } // verify the required parameter 'knowledgeBase' is set

          if (typeof knowledgeBase === "undefined" || knowledgeBase === null) {
            throw new window.Error(
              'Missing the required parameter "knowledgeBase" when calling getKnowledgeBase'
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
            knowledgeBase: knowledgeBase
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
            "/knowledge-bases/{knowledgeBase}",
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

    return KnowledgeBaseApi;
  })(_ApiClient2.default);

exports.default = KnowledgeBaseApi;
