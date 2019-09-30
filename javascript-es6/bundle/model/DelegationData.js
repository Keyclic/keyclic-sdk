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
 * The DelegationData model module.
 * @module model/DelegationData
 */
var DelegationData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegationData".
   * @alias module:model/DelegationData
   * @class
  
   * @param report { String }
  
   * @param service { String }
  
   */
    function DelegationData(report, service) {
      _classCallCheck(this, DelegationData);

      this.description = null;
      this.report = report;
      this.service = service;
    }
    /**
     * Constructs a "DelegationData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationData } object Optional instance to populate.
     * @return { module:model/DelegationData } The populated "DelegationData" instance.
     */

    _createClass(
      DelegationData,
      [
        {
          key: "getDescription",

          /**
           * @return { String }
           */
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getReport",
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
          /**
           * @return { String }
           */
        },
        {
          key: "getService",
          value: function getService() {
            return this.service;
          }
          /**
           * @param { String } service
           */
        },
        {
          key: "setService",
          value: function setService(service) {
            this.service = service;
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
              object = new DelegationData();
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("report")) {
              object.report = _ApiClient.default.convertToType(
                data["report"],
                "String"
              );
            }

            if (data.hasOwnProperty("service")) {
              object.service = _ApiClient.default.convertToType(
                data["service"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return DelegationData;
  })();

exports.default = DelegationData;
