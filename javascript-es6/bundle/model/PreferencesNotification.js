"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _NotificationReportNotification = _interopRequireDefault(
  require("./NotificationReportNotification")
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
 * The PreferencesNotification model module.
 * @module model/PreferencesNotification
 */
var PreferencesNotification =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PreferencesNotification".
   * @alias module:model/PreferencesNotification
   * @class
  
   */
    function PreferencesNotification() {
      _classCallCheck(this, PreferencesNotification);

      this.report = null;
      this.reportType = _NotificationReportNotification.default;
    }
    /**
     * Constructs a "PreferencesNotification" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PreferencesNotification } object Optional instance to populate.
     * @return { module:model/PreferencesNotification } The populated "PreferencesNotification" instance.
     */

    _createClass(
      PreferencesNotification,
      [
        {
          key: "getReport",

          /**
           * @return { module:model/NotificationReportNotification }
           */
          value: function getReport() {
            return this.report;
          }
          /**
           * @param { module:model/NotificationReportNotification } report
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
              object = new PreferencesNotification();
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

    return PreferencesNotification;
  })();

exports.default = PreferencesNotification;
