"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
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

/**
 * The ApplicationLinksSelfIriTemplateMapping model module.
 * @module model/ApplicationLinksSelfIriTemplateMapping
 */
var ApplicationLinksSelfIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ApplicationLinksSelfIriTemplateMapping".
     * @alias module:model/ApplicationLinksSelfIriTemplateMapping
     * @class
    
     */
  function ApplicationLinksSelfIriTemplateMapping() {
    _classCallCheck(this, ApplicationLinksSelfIriTemplateMapping);

    this.application = null;
  }
  /**
   * Constructs a "ApplicationLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ApplicationLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/ApplicationLinksSelfIriTemplateMapping } The populated "ApplicationLinksSelfIriTemplateMapping" instance.
   */

  _createClass(
    ApplicationLinksSelfIriTemplateMapping,
    [
      {
        key: "getApplication",

        /**
         * @return { String }
         */
        value: function getApplication() {
          return this.application;
        }
        /**
         * @param { String } application
         */
      },
      {
        key: "setApplication",
        value: function setApplication(application) {
          this.application = application;
        }
      }
    ],
    [
      {
        key: "constructFromData",
        value: function constructFromData(data) {
          var object =
            arguments.length > 1 && arguments[1] !== undefined
              ? arguments[1]
              : null;

          if (data === null) {
            throw new Error("No data to build object");
          }

          if (object === null) {
            object = new ApplicationLinksSelfIriTemplateMapping();
          }

          if (data.hasOwnProperty("application")) {
            object.application = _ApiClient.default.convertToType(
              data["application"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return ApplicationLinksSelfIriTemplateMapping;
})();

exports.default = ApplicationLinksSelfIriTemplateMapping;
