"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationPatchPreferencesNotificationReport = _interopRequireDefault(
  require("./OrganizationPatchPreferencesNotificationReport")
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
 * The OrganizationPatchPreferencesNotification model module.
 * @module model/OrganizationPatchPreferencesNotification
 */
var OrganizationPatchPreferencesNotification = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "OrganizationPatchPreferencesNotification".
     * @alias module:model/OrganizationPatchPreferencesNotification
     * @class
    
     */
  function OrganizationPatchPreferencesNotification() {
    _classCallCheck(this, OrganizationPatchPreferencesNotification);

    this.report = null;
    this.reportType = _OrganizationPatchPreferencesNotificationReport.default;
  }
  /**
   * Constructs a "OrganizationPatchPreferencesNotification" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OrganizationPatchPreferencesNotification } object Optional instance to populate.
   * @return { module:model/OrganizationPatchPreferencesNotification } The populated "OrganizationPatchPreferencesNotification" instance.
   */

  _createClass(
    OrganizationPatchPreferencesNotification,
    [
      {
        key: "getReport",

        /**
         * @return { module:model/OrganizationPatchPreferencesNotificationReport }
         */
        value: function getReport() {
          return this.report;
        }
        /**
         * @param { module:model/OrganizationPatchPreferencesNotificationReport } report
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
            object = new OrganizationPatchPreferencesNotification();
          }

          if (data.hasOwnProperty("report")) {
            object.report = _ApiClient.default.convertToType(
              data["report"],
              object.reportType
            );
          }

          return object;
        }
      }
    ]
  );

  return OrganizationPatchPreferencesNotification;
})();

exports.default = OrganizationPatchPreferencesNotification;
