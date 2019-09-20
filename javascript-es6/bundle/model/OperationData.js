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
 * The OperationData model module.
 * @module model/OperationData
 */
var OperationData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationData".
   * @alias module:model/OperationData
   * @class
  
   * @param report { String }
  
   */
    function OperationData(report) {
      _classCallCheck(this, OperationData);

      this.description = null;
      this.name = null;
      this.identificationNumber = null;
      this.report = report;
      this.organization = null;
      this.scheduledAt = null;
    }
    /**
     * Constructs a "OperationData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationData } object Optional instance to populate.
     * @return { module:model/OperationData } The populated "OperationData" instance.
     */

    _createClass(
      OperationData,
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
          key: "getName",
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getIdentificationNumber",
          value: function getIdentificationNumber() {
            return this.identificationNumber;
          }
          /**
           * @param { String } identificationNumber
           */
        },
        {
          key: "setIdentificationNumber",
          value: function setIdentificationNumber(identificationNumber) {
            this.identificationNumber = identificationNumber;
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
          key: "getOrganization",
          value: function getOrganization() {
            return this.organization;
          }
          /**
           * @param { String } organization
           */
        },
        {
          key: "setOrganization",
          value: function setOrganization(organization) {
            this.organization = organization;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getScheduledAt",
          value: function getScheduledAt() {
            return this.scheduledAt;
          }
          /**
           * @param { String } scheduledAt
           */
        },
        {
          key: "setScheduledAt",
          value: function setScheduledAt(scheduledAt) {
            this.scheduledAt = scheduledAt;
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
              object = new OperationData();
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("identificationNumber")) {
              object.identificationNumber = _ApiClient.default.convertToType(
                data["identificationNumber"],
                "String"
              );
            }

            if (data.hasOwnProperty("report")) {
              object.report = _ApiClient.default.convertToType(
                data["report"],
                "String"
              );
            }

            if (data.hasOwnProperty("organization")) {
              object.organization = _ApiClient.default.convertToType(
                data["organization"],
                "String"
              );
            }

            if (data.hasOwnProperty("scheduledAt")) {
              object.scheduledAt = _ApiClient.default.convertToType(
                data["scheduledAt"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return OperationData;
  })();

exports.default = OperationData;
