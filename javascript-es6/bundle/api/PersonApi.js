"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _FeedbackPagination = _interopRequireDefault(
  require("../model/FeedbackPagination")
);

var _MemberPagination = _interopRequireDefault(
  require("../model/MemberPagination")
);

var _OccupantPagination = _interopRequireDefault(
  require("../model/OccupantPagination")
);

var _OperationPagination = _interopRequireDefault(
  require("../model/OperationPagination")
);

var _Person = _interopRequireDefault(require("../model/Person"));

var _PersonPagination = _interopRequireDefault(
  require("../model/PersonPagination")
);

var _PersonPatch = _interopRequireDefault(require("../model/PersonPatch"));

var _ReportPagination = _interopRequireDefault(
  require("../model/ReportPagination")
);

var _ReviewRequestPagination = _interopRequireDefault(
  require("../model/ReviewRequestPagination")
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
 * Person service.
 * @module api/PersonApi
 */
var PersonApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(PersonApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function PersonApi() {
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

      _classCallCheck(this, PersonApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(PersonApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Feedback resources.
     * @param { String } xKeyclicApp
     * @param { String } person The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { FeedbackPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { String } category The identifier of the resource.
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { Array.<String> } geoHash
     * @param { module:model/String } order   (default to desc)
     * @param { String } organization The identifier of the resource.
     * @param { String } state
     * @param { Array.<String> } visibility
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     */

    _createClass(PersonApi, [
      {
        key: "cgetFeedbackByPerson",
        value: function cgetFeedbackByPerson() {
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
            returnType = _FeedbackPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            category = options.category,
            after = options.after,
            before = options.before,
            geoHash = options.geoHash,
            order = options.order,
            organization = options.organization,
            state = options.state,
            visibility = options.visibility,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetFeedbackByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetFeedbackByPerson'
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
          } // verify the null value of parameter 'category'

          if (typeof category === "undefined") {
            category = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'geoHash'

          if (typeof geoHash === "undefined") {
            geoHash = null;
          } // verify the null value of parameter 'organization'

          if (typeof organization === "undefined") {
            organization = null;
          } // verify the null value of parameter 'state'

          if (typeof state === "undefined") {
            state = null;
          } // verify the null value of parameter 'visibility'

          if (typeof visibility === "undefined") {
            visibility = null;
          }

          var pathParams = {
            person: person
          };
          var bodyParam = null;
          var queryParams = {
            category: category,
            after: after,
            before: before,
            "geo_hash[]": geoHash,
            order: order,
            organization: organization,
            state: state,
            "visibility[]": visibility,
            page: page,
            limit: limit
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
            "/people/{person}/feedbacks",
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
         * Retrieve all Membership resources.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { MemberPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { module:model/String } order   (default to desc)
         * @param { String } role
         * @param { String } query
         * @param { Array.<String> } roles
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetMembershipsByPerson",
        value: function cgetMembershipsByPerson() {
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
            returnType = _MemberPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            role = options.role,
            query = options.query,
            roles = options.roles,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetMembershipsByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetMembershipsByPerson'
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
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'role'

          if (typeof role === "undefined") {
            role = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          } // verify the null value of parameter 'roles'

          if (typeof roles === "undefined") {
            roles = null;
          }

          var pathParams = {
            person: person
          };
          var bodyParam = null;
          var queryParams = {
            after: after,
            before: before,
            order: order,
            role: role,
            query: query,
            "roles[]": roles,
            page: page,
            limit: limit
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
            "/people/{person}/memberships",
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
         * Retrieve all Occupant resources.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { OccupantPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { module:model/String } order   (default to desc)
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetOccupantsByPerson",
        value: function cgetOccupantsByPerson() {
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
            returnType = _OccupantPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetOccupantsByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetOccupantsByPerson'
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
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          }

          var pathParams = {
            person: person
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
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/people/{person}/occupants",
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
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { OperationPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
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
        key: "cgetOperationsByPerson",
        value: function cgetOperationsByPerson() {
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
            person = options.person,
            acceptLanguage = options.acceptLanguage,
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
              'Missing the required parameter "xKeyclicApp" when calling cgetOperationsByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetOperationsByPerson'
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
            person: person
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
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/people/{person}/operations",
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
         * Retrieve all Person resources.
         * @param { String } xKeyclicApp
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { PersonPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { module:model/String } order   (default to desc)
         * @param { String } query
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetPeople",
        value: function cgetPeople() {
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
            returnType = _PersonPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            query = options.query,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetPeople'
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
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          }

          var pathParams = {};
          var bodyParam = null;
          var queryParams = {
            after: after,
            before: before,
            order: order,
            query: query,
            page: page,
            limit: limit
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
            "/people",
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
         * Retrieve all Report resources.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { ReportPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { String } assignedTo The identifier of the resource.
         * @param { String } category The identifier of the resource.
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { String } delegatedTo The identifier of the resource.
         * @param { module:model/String } order   (default to desc)
         * @param { String } place The identifier of the resource.
         * @param { String } query
         * @param { String } state
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetReportsByPerson",
        value: function cgetReportsByPerson() {
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
            returnType = _ReportPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
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
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetReportsByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetReportsByPerson'
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
          }

          var pathParams = {
            person: person
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
            limit: limit
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
            "/people/{person}/reports",
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
         * Retrieve all ReviewRequest resources.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { ReviewRequestPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { module:model/String } order   (default to desc)
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetReviewRequestsByPerson",
        value: function cgetReviewRequestsByPerson() {
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
            returnType = _ReviewRequestPagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetReviewRequestsByPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling cgetReviewRequestsByPerson'
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
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          }

          var pathParams = {
            person: person
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
            "x-keyclic-app": xKeyclicApp,
            "x-keyclic-app-version": xKeyclicAppVersion
          };
          var credentialParams = credentials;
          var authNames = ["bearer"];
          var contentTypes = ["application/json;charset=UTF-8"];
          var accepts = ["application/hal+json;charset=UTF-8"];
          return this.callApi(
            "/people/{person}/review-requests",
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
         * Retrieve one Person resource.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Person }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getPerson",
        value: function getPerson() {
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
            returnType = _Person.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling getPerson'
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

          var pathParams = {
            person: person
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
            "/people/{person}",
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
         * Edit one Person resource.
         * @param { String } xKeyclicApp
         * @param { module:model/PersonPatch } personPatch
         * @param { String } person The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Person }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "patchPerson",
        value: function patchPerson() {
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
            returnType = _Person.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            personPatch = options.personPatch,
            person = options.person,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchPerson'
            );
          } // verify the required parameter 'personPatch' is set

          if (typeof personPatch === "undefined" || personPatch === null) {
            throw new window.Error(
              'Missing the required parameter "personPatch" when calling patchPerson'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling patchPerson'
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

          var pathParams = {
            person: person
          };
          var bodyParam = personPatch;
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
            "/people/{person}",
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

    return PersonApi;
  })(_ApiClient2.default);

exports.default = PersonApi;
