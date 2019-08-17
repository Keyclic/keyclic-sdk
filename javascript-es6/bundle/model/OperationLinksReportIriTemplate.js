"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationLinksReportIriTemplateMapping = _interopRequireDefault(
  require("./DelegationLinksReportIriTemplateMapping")
);

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
 * The OperationLinksReportIriTemplate model module.
 * @module model/OperationLinksReportIriTemplate
 */
var OperationLinksReportIriTemplate =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationLinksReportIriTemplate".
   * @alias module:model/OperationLinksReportIriTemplate
   * @class
  
   */
    function OperationLinksReportIriTemplate() {
      _classCallCheck(this, OperationLinksReportIriTemplate);

      this.mapping = null;
      this.mappingType = _DelegationLinksReportIriTemplateMapping.default;
    }
    /**
     * Constructs a "OperationLinksReportIriTemplate" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationLinksReportIriTemplate } object Optional instance to populate.
     * @return { module:model/OperationLinksReportIriTemplate } The populated "OperationLinksReportIriTemplate" instance.
     */

    _createClass(OperationLinksReportIriTemplate, null, [
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
            object = new OperationLinksReportIriTemplate();
          }

          if (data.hasOwnProperty("mapping")) {
            object.mapping = _ApiClient.default.convertToType(
              data["mapping"],
              object.mappingType
            );
          }

          return object;
        }
      }
    ]);

    return OperationLinksReportIriTemplate;
  })();

exports.default = OperationLinksReportIriTemplate;
