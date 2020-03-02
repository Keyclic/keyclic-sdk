"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportTypeWorkflow = _interopRequireDefault(
  require("./ReportTypeWorkflow")
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
 * The ConfigurationReportType model module.
 * @module model/ConfigurationReportType
 */
var ConfigurationReportType = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ConfigurationReportType".
     * @alias module:model/ConfigurationReportType
     * @class
    
     */
  function ConfigurationReportType() {
    _classCallCheck(this, ConfigurationReportType);

    this.id = null;
    this.type = null;
    this.workflow = null;
    this.workflowType = _ReportTypeWorkflow.default;
  }
  /**
   * Constructs a "ConfigurationReportType" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ConfigurationReportType } object Optional instance to populate.
   * @return { module:model/ConfigurationReportType } The populated "ConfigurationReportType" instance.
   */

  _createClass(
    ConfigurationReportType,
    [
      {
        key: "getId",

        /**
         * @return { String }
         */
        value: function getId() {
          return this.id;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getType",
        value: function getType() {
          return this.type;
        }
        /**
         * @return { module:model/ReportTypeWorkflow }
         */
      },
      {
        key: "getWorkflow",
        value: function getWorkflow() {
          return this.workflow;
        }
        /**
         * @param { module:model/ReportTypeWorkflow } workflow
         */
      },
      {
        key: "setWorkflow",
        value: function setWorkflow(workflow) {
          this.workflow = workflow;
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
            object = new ConfigurationReportType();
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("workflow")) {
            object.workflow = _ApiClient.default.convertToType(
              data["workflow"],
              object.workflowType
            );
          }

          return object;
        }
      }
    ]
  );

  return ConfigurationReportType;
})();

exports.default = ConfigurationReportType;
