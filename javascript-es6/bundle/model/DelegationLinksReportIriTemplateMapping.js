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
 * The DelegationLinksReportIriTemplateMapping model module.
 * @module model/DelegationLinksReportIriTemplateMapping
 */
var DelegationLinksReportIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegationLinksReportIriTemplateMapping".
   * @alias module:model/DelegationLinksReportIriTemplateMapping
   * @class
  
   */
    function DelegationLinksReportIriTemplateMapping() {
      _classCallCheck(this, DelegationLinksReportIriTemplateMapping);

      this.report = null;
    }
    /**
     * Constructs a "DelegationLinksReportIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationLinksReportIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/DelegationLinksReportIriTemplateMapping } The populated "DelegationLinksReportIriTemplateMapping" instance.
     */

    _createClass(
      DelegationLinksReportIriTemplateMapping,
      [
        {
          key: "getReport",

          /**
           * @return { String }
           */
          value: function getReport() {
            return this.report;
          }
          /**
           * @param { String } report
           */
        },
        {
          key: "setReport",
          value: function setReport(report) {
            this.report = report;
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
              object = new DelegationLinksReportIriTemplateMapping();
            }

            if (data.hasOwnProperty("report")) {
              object.report = _ApiClient.default.convertToType(
                data["report"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return DelegationLinksReportIriTemplateMapping;
  })();

exports.default = DelegationLinksReportIriTemplateMapping;
