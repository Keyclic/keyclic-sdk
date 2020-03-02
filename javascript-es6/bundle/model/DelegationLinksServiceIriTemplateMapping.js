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
 * The DelegationLinksServiceIriTemplateMapping model module.
 * @module model/DelegationLinksServiceIriTemplateMapping
 */
var DelegationLinksServiceIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "DelegationLinksServiceIriTemplateMapping".
     * @alias module:model/DelegationLinksServiceIriTemplateMapping
     * @class
    
     */
  function DelegationLinksServiceIriTemplateMapping() {
    _classCallCheck(this, DelegationLinksServiceIriTemplateMapping);

    this.externalService = null;
  }
  /**
   * Constructs a "DelegationLinksServiceIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationLinksServiceIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/DelegationLinksServiceIriTemplateMapping } The populated "DelegationLinksServiceIriTemplateMapping" instance.
   */

  _createClass(
    DelegationLinksServiceIriTemplateMapping,
    [
      {
        key: "getExternalService",

        /**
         * @return { String }
         */
        value: function getExternalService() {
          return this.externalService;
        }
        /**
         * @param { String } externalService
         */
      },
      {
        key: "setExternalService",
        value: function setExternalService(externalService) {
          this.externalService = externalService;
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
            object = new DelegationLinksServiceIriTemplateMapping();
          }

          if (data.hasOwnProperty("externalService")) {
            object.externalService = _ApiClient.default.convertToType(
              data["externalService"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return DelegationLinksServiceIriTemplateMapping;
})();

exports.default = DelegationLinksServiceIriTemplateMapping;
