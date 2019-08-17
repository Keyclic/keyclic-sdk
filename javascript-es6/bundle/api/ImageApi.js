"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient2 = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("../model/Error"));

var _Feedback = _interopRequireDefault(require("../model/Feedback"));

var _ImageData = _interopRequireDefault(require("../model/ImageData"));

var _Operation = _interopRequireDefault(require("../model/Operation"));

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
 * Image service.
 * @module api/ImageApi
 */
var ImageApi =
  /*#__PURE__*/
  (function(_ApiClient) {
    _inherits(ImageApi, _ApiClient);

    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    function ImageApi() {
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

      _classCallCheck(this, ImageApi);

      return _possibleConstructorReturn(
        this,
        _getPrototypeOf(ImageApi).call(this, basePath, headers, timeout)
      );
    }
    /**
     * Remove one Image resource.
     * @param { String } xKeyclicApp
     * @param { String } operation The identifier of the resource.
     * @param { String } image The identifier of the resource.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     */

    _createClass(ImageApi, [
      {
        key: "deleteImageByOperationAndImage",
        value: function deleteImageByOperationAndImage() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;
          var xKeyclicApp = options.xKeyclicApp,
            operation = options.operation,
            image = options.image,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling deleteImageByOperationAndImage'
            );
          } // verify the required parameter 'operation' is set

          if (typeof operation === "undefined" || operation === null) {
            throw new window.Error(
              'Missing the required parameter "operation" when calling deleteImageByOperationAndImage'
            );
          } // verify the required parameter 'image' is set

          if (typeof image === "undefined" || image === null) {
            throw new window.Error(
              'Missing the required parameter "image" when calling deleteImageByOperationAndImage'
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
              'Missing the required parameter "credentials" when calling deleteImageByOperationAndImage'
            );
          }

          var pathParams = {
            operation: operation,
            image: image
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
            "/operations/{operation}/images/{image}",
            "DELETE",
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
         * Retrieve one Image resource.
         * @param { String } xKeyclicApp
         * @param { String } businessActivity The identifier of the resource.
         * @param { String } width
         * @param { String } height
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getImageByBusinessActivityAndWidthAndHeight",
        value: function getImageByBusinessActivityAndWidthAndHeight() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = File;
          }

          var xKeyclicApp = options.xKeyclicApp,
            businessActivity = options.businessActivity,
            width = options.width,
            height = options.height,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getImageByBusinessActivityAndWidthAndHeight'
            );
          } // verify the required parameter 'businessActivity' is set

          if (
            typeof businessActivity === "undefined" ||
            businessActivity === null
          ) {
            throw new window.Error(
              'Missing the required parameter "businessActivity" when calling getImageByBusinessActivityAndWidthAndHeight'
            );
          } // verify the required parameter 'width' is set

          if (typeof width === "undefined" || width === null) {
            throw new window.Error(
              'Missing the required parameter "width" when calling getImageByBusinessActivityAndWidthAndHeight'
            );
          } // verify the required parameter 'height' is set

          if (typeof height === "undefined" || height === null) {
            throw new window.Error(
              'Missing the required parameter "height" when calling getImageByBusinessActivityAndWidthAndHeight'
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
              'Missing the required parameter "credentials" when calling getImageByBusinessActivityAndWidthAndHeight'
            );
          }

          var pathParams = {
            businessActivity: businessActivity,
            width: width,
            height: height
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
            "/businessactivities/{businessActivity}/image/{width}/{height}",
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
         * Retrieve one Image resource.
         * @param { String } xKeyclicApp
         * @param { String } feedback The identifier of the resource.
         * @param { String } image The identifier of the resource.
         * @param { String } width
         * @param { String } height
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getImageByFeedbackAndImageAndWidthAndHeight",
        value: function getImageByFeedbackAndImageAndWidthAndHeight() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = File;
          }

          var xKeyclicApp = options.xKeyclicApp,
            feedback = options.feedback,
            image = options.image,
            width = options.width,
            height = options.height,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getImageByFeedbackAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'feedback' is set

          if (typeof feedback === "undefined" || feedback === null) {
            throw new window.Error(
              'Missing the required parameter "feedback" when calling getImageByFeedbackAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'image' is set

          if (typeof image === "undefined" || image === null) {
            throw new window.Error(
              'Missing the required parameter "image" when calling getImageByFeedbackAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'width' is set

          if (typeof width === "undefined" || width === null) {
            throw new window.Error(
              'Missing the required parameter "width" when calling getImageByFeedbackAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'height' is set

          if (typeof height === "undefined" || height === null) {
            throw new window.Error(
              'Missing the required parameter "height" when calling getImageByFeedbackAndImageAndWidthAndHeight'
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
              'Missing the required parameter "credentials" when calling getImageByFeedbackAndImageAndWidthAndHeight'
            );
          }

          var pathParams = {
            feedback: feedback,
            image: image,
            width: width,
            height: height
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
            "/feedbacks/{feedback}/images/{image}/{width}/{height}",
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
         * Retrieve one Image resource.
         * @param { String } xKeyclicApp
         * @param { String } operation The identifier of the resource.
         * @param { String } image The identifier of the resource.
         * @param { String } width
         * @param { String } height
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getImageByOperationAndImageAndWidthAndHeight",
        value: function getImageByOperationAndImageAndWidthAndHeight() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = File;
          }

          var xKeyclicApp = options.xKeyclicApp,
            operation = options.operation,
            image = options.image,
            width = options.width,
            height = options.height,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getImageByOperationAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'operation' is set

          if (typeof operation === "undefined" || operation === null) {
            throw new window.Error(
              'Missing the required parameter "operation" when calling getImageByOperationAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'image' is set

          if (typeof image === "undefined" || image === null) {
            throw new window.Error(
              'Missing the required parameter "image" when calling getImageByOperationAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'width' is set

          if (typeof width === "undefined" || width === null) {
            throw new window.Error(
              'Missing the required parameter "width" when calling getImageByOperationAndImageAndWidthAndHeight'
            );
          } // verify the required parameter 'height' is set

          if (typeof height === "undefined" || height === null) {
            throw new window.Error(
              'Missing the required parameter "height" when calling getImageByOperationAndImageAndWidthAndHeight'
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
              'Missing the required parameter "credentials" when calling getImageByOperationAndImageAndWidthAndHeight'
            );
          }

          var pathParams = {
            operation: operation,
            image: image,
            width: width,
            height: height
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
            "/operations/{operation}/images/{image}/{width}/{height}",
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
         * Retrieve one Image resource.
         * @param { String } xKeyclicApp
         * @param { String } person The identifier of the resource.
         * @param { String } width
         * @param { String } height
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "getImageByPersonAndWidthAndHeight",
        value: function getImageByPersonAndWidthAndHeight() {
          var returnType =
            arguments.length > 0 && arguments[0] !== undefined
              ? arguments[0]
              : null;
          var options = arguments.length > 1 ? arguments[1] : undefined;
          var credentials = arguments.length > 2 ? arguments[2] : undefined;

          if (returnType === null) {
            returnType = File;
          }

          var xKeyclicApp = options.xKeyclicApp,
            person = options.person,
            width = options.width,
            height = options.height,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling getImageByPersonAndWidthAndHeight'
            );
          } // verify the required parameter 'person' is set

          if (typeof person === "undefined" || person === null) {
            throw new window.Error(
              'Missing the required parameter "person" when calling getImageByPersonAndWidthAndHeight'
            );
          } // verify the required parameter 'width' is set

          if (typeof width === "undefined" || width === null) {
            throw new window.Error(
              'Missing the required parameter "width" when calling getImageByPersonAndWidthAndHeight'
            );
          } // verify the required parameter 'height' is set

          if (typeof height === "undefined" || height === null) {
            throw new window.Error(
              'Missing the required parameter "height" when calling getImageByPersonAndWidthAndHeight'
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
              'Missing the required parameter "credentials" when calling getImageByPersonAndWidthAndHeight'
            );
          }

          var pathParams = {
            person: person,
            width: width,
            height: height
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
            "/people/{person}/image/{width}/{height}",
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
         * Create one Image resource.
         * @param { String } xKeyclicApp
         * @param { module:model/ImageData } imageData
         * @param { String } feedback The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postImageByFeedback",
        value: function postImageByFeedback() {
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
            imageData = options.imageData,
            feedback = options.feedback,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postImageByFeedback'
            );
          } // verify the required parameter 'imageData' is set

          if (typeof imageData === "undefined" || imageData === null) {
            throw new window.Error(
              'Missing the required parameter "imageData" when calling postImageByFeedback'
            );
          } // verify the required parameter 'feedback' is set

          if (typeof feedback === "undefined" || feedback === null) {
            throw new window.Error(
              'Missing the required parameter "feedback" when calling postImageByFeedback'
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
              'Missing the required parameter "credentials" when calling postImageByFeedback'
            );
          }

          var pathParams = {
            feedback: feedback
          };
          var bodyParam = imageData;
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
            "/feedbacks/{feedback}/images",
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
         * Create one Image resource.
         * @param { String } xKeyclicApp
         * @param { module:model/ImageData } imageData
         * @param { String } operation The identifier of the resource.
         * @param { Object } credentials The required credentials with good properties to use different types of authentication.
         * @param { Operation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
         * @param { module:model/String } acceptLanguage   (default to fr-FR)
         * @param { String } xKeyclicAppVersion
         */
      },
      {
        key: "postImageByOperation",
        value: function postImageByOperation() {
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
            imageData = options.imageData,
            operation = options.operation,
            acceptLanguage = options.acceptLanguage,
            xKeyclicAppVersion = options.xKeyclicAppVersion; // verify the required parameter 'xKeyclicApp' is set

          if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
            throw new window.Error(
              'Missing the required parameter "xKeyclicApp" when calling postImageByOperation'
            );
          } // verify the required parameter 'imageData' is set

          if (typeof imageData === "undefined" || imageData === null) {
            throw new window.Error(
              'Missing the required parameter "imageData" when calling postImageByOperation'
            );
          } // verify the required parameter 'operation' is set

          if (typeof operation === "undefined" || operation === null) {
            throw new window.Error(
              'Missing the required parameter "operation" when calling postImageByOperation'
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
              'Missing the required parameter "credentials" when calling postImageByOperation'
            );
          }

          var pathParams = {
            operation: operation
          };
          var bodyParam = imageData;
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
            "/operations/{operation}/images",
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

    return ImageApi;
  })(_ApiClient2.default);

exports.default = ImageApi;
