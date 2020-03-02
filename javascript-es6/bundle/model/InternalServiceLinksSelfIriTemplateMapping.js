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
 * The InternalServiceLinksSelfIriTemplateMapping model module.
 * @module model/InternalServiceLinksSelfIriTemplateMapping
 */
var InternalServiceLinksSelfIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "InternalServiceLinksSelfIriTemplateMapping".
     * @alias module:model/InternalServiceLinksSelfIriTemplateMapping
     * @class
    
     */
  function InternalServiceLinksSelfIriTemplateMapping() {
    _classCallCheck(this, InternalServiceLinksSelfIriTemplateMapping);

    this.internalService = null;
  }
  /**
   * Constructs a "InternalServiceLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InternalServiceLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/InternalServiceLinksSelfIriTemplateMapping } The populated "InternalServiceLinksSelfIriTemplateMapping" instance.
   */

  _createClass(
    InternalServiceLinksSelfIriTemplateMapping,
    [
      {
        key: "getInternalService",

        /**
         * @return { String }
         */
        value: function getInternalService() {
          return this.internalService;
        }
        /**
         * @param { String } internalService
         */
      },
      {
        key: "setInternalService",
        value: function setInternalService(internalService) {
          this.internalService = internalService;
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
            object = new InternalServiceLinksSelfIriTemplateMapping();
          }

          if (data.hasOwnProperty("internalService")) {
            object.internalService = _ApiClient.default.convertToType(
              data["internalService"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return InternalServiceLinksSelfIriTemplateMapping;
})();

exports.default = InternalServiceLinksSelfIriTemplateMapping;
