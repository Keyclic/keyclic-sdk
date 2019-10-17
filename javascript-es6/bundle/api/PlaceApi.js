"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _OccupantPagination = _interopRequireDefault(
  require("../model/OccupantPagination")
);

var _Place = _interopRequireDefault(require("../model/Place"));

var _PlaceData = _interopRequireDefault(require("../model/PlaceData"));

var _PlacePagination = _interopRequireDefault(
  require("../model/PlacePagination")
);

var _PlacePatch = _interopRequireDefault(require("../model/PlacePatch"));

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
 * Place service.
 * @module api/PlaceApi
 */
var PlaceApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(PlaceApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function PlaceApi() {
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

      _classCallCheck(this, PlaceApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(PlaceApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Retrieve all Occupant resources.
     * @param { String } xKeyclicApp
     * @param { String } place The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { OccupantPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/Date } after
     * @param { module:model/Date } before
     * @param { module:model/String } order   (default to desc)
     * @param { String } person The identifier of the resource.
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     */

    _createClass(PlaceApi, [
      {
        key: "cgetOccupantsByPlace",
        value: function cgetOccupantsByPlace() {
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
            place = options.place,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            after = options.after,
            before = options.before,
            order = options.order,
            person = options.person,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetOccupantsByPlace'
            );
          } // verify the required parameter 'place' is set

          if (typeof place === "undefined" || place === null) {
            throw new window.Error(
              'Missing the required parameter "place" when calling cgetOccupantsByPlace'
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
          } // verify the null value of parameter 'person'

          if (typeof person === "undefined") {
            person = null;
          }

          var pathParams = {
            place: place
          };
          var bodyParam = null;
          var queryParams = {
            after: after,
            before: before,
            order: order,
            person: person,
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
            "/places/{place}/occupants",
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
         * Retrieve all Place resources.
         * @param { String } xKeyclicApp
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { PlacePagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         * @param { String } businessActivity The identifier of the resource.
         * @param { module:model/Date } after
         * @param { module:model/Date } before
         * @param { String } geoElevation
         * @param { Array.<String> } geoHash
         * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
         * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
         * @param { module:model/String } order   (default to desc)
         * @param { String } organization The identifier of the resource.
         * @param { String } parent The identifier of the resource.
         * @param { Array.<String> } parents The identifier of the resource.
         * @param { String } query
         * @param { Number } page Page of the overview.  (default to 1)
         * @param { Number } limit Page of the overview.  (default to 10)
         */
      },
      {
        key: "cgetPlaces",
        value: function cgetPlaces() {
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
            returnType = _PlacePagination.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion,
            businessActivity = options.businessActivity,
            after = options.after,
            before = options.before,
            geoElevation = options.geoElevation,
            geoHash = options.geoHash,
            geoPoint = options.geoPoint,
            geoCoordinates = options.geoCoordinates,
            order = options.order,
            organization = options.organization,
            parent = options.parent,
            parents = options.parents,
            query = options.query,
            page = options.page,
            limit = options.limit; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling cgetPlaces'
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
          } // verify the null value of parameter 'businessActivity'

          if (typeof businessActivity === "undefined") {
            businessActivity = null;
          } // verify the null value of parameter 'after'

          if (typeof after === "undefined") {
            after = null;
          } // verify the null value of parameter 'before'

          if (typeof before === "undefined") {
            before = null;
          } // verify the null value of parameter 'geoElevation'

          if (typeof geoElevation === "undefined") {
            geoElevation = null;
          } // verify the null value of parameter 'geoHash'

          if (typeof geoHash === "undefined") {
            geoHash = null;
          } // verify the null value of parameter 'geoPoint'

          if (typeof geoPoint === "undefined") {
            geoPoint = null;
          } // verify the null value of parameter 'geoCoordinates'

          if (typeof geoCoordinates === "undefined") {
            geoCoordinates = null;
          } // verify the null value of parameter 'organization'

          if (typeof organization === "undefined") {
            organization = null;
          } // verify the null value of parameter 'parent'

          if (typeof parent === "undefined") {
            parent = null;
          } // verify the null value of parameter 'parents'

          if (typeof parents === "undefined") {
            parents = null;
          } // verify the null value of parameter 'query'

          if (typeof query === "undefined") {
            query = null;
          }

          var pathParams = {};
          var bodyParam = null;
          var queryParams = {
            business_activity: businessActivity,
            after: after,
            before: before,
            geo_elevation: geoElevation,
            "geo_hash[]": geoHash,
            geo_point: geoPoint,
            geo_coordinates: geoCoordinates,
            order: order,
            organization: organization,
            parent: parent,
            "parents[]": parents,
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
            "/places",
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
         * Retrieve one Place resource.
         * @param { String } xKeyclicApp
         * @param { String } place The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getPlace",
        value: function getPlace() {
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
            returnType = _Place.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            place = options.place,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getPlace'
            );
          } // verify the required parameter 'place' is set

          if (typeof place === "undefined" || place === null) {
            throw new window.Error(
              'Missing the required parameter "place" when calling getPlace'
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
            place: place
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
            "/places/{place}",
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
         * Edit one Place resource.
         * @param { String } xKeyclicApp
         * @param { module:model/PlacePatch } placePatch
         * @param { String } place The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "patchPlace",
        value: function patchPlace() {
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
            returnType = _Place.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            placePatch = options.placePatch,
            place = options.place,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling patchPlace'
            );
          } // verify the required parameter 'placePatch' is set

          if (typeof placePatch === "undefined" || placePatch === null) {
            throw new window.Error(
              'Missing the required parameter "placePatch" when calling patchPlace'
            );
          } // verify the required parameter 'place' is set

          if (typeof place === "undefined" || place === null) {
            throw new window.Error(
              'Missing the required parameter "place" when calling patchPlace'
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
            place: place
          };
          var bodyParam = placePatch;
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
            "/places/{place}",
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
         * Create one Place resource.
         * @param { String } xKeyclicApp
         * @param { module:model/PlaceData } placeData
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Place }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postPlace",
        value: function postPlace() {
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
            returnType = _Place.default;
          }

          var xKeyclicApp = options.xKeyclicApp,
            placeData = options.placeData,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postPlace'
            );
          } // verify the required parameter 'placeData' is set

          if (typeof placeData === "undefined" || placeData === null) {
            throw new window.Error(
              'Missing the required parameter "placeData" when calling postPlace'
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

          var pathParams = {};
          var bodyParam = placeData;
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
            "/places",
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

    return PlaceApi;
  })(_ApiClient2.default);

exports.default = PlaceApi;
