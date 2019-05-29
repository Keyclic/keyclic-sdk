"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationLinksReportIriTemplate = _interopRequireDefault(
  require("./DelegationLinksReportIriTemplate")
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
 * The DelegationLinksReport model module.
 * @module model/DelegationLinksReport
 */
var DelegationLinksReport =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegationLinksReport".
   * @alias module:model/DelegationLinksReport
   * @class
  
   */
    function DelegationLinksReport() {
      _classCallCheck(this, DelegationLinksReport);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _DelegationLinksReportIriTemplate.default;
    }
    /**
     * Constructs a "DelegationLinksReport" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationLinksReport } object Optional instance to populate.
     * @return { module:model/DelegationLinksReport } The populated "DelegationLinksReport" instance.
     */

    _createClass(DelegationLinksReport, null, [
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
            object = new DelegationLinksReport();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]);

    return DelegationLinksReport;
  })();

exports.default = DelegationLinksReport;
