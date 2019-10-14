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
 * The OrganizationPreferencesNotificationReport model module.
 * @module model/OrganizationPreferencesNotificationReport
 */
var OrganizationPreferencesNotificationReport =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationPreferencesNotificationReport".
   * @alias module:model/OrganizationPreferencesNotificationReport
   * @class
  
   */
    function OrganizationPreferencesNotificationReport() {
      _classCallCheck(this, OrganizationPreferencesNotificationReport);

      this.accepted = null;
      this.refused = null;
    }
    /**
     * Constructs a "OrganizationPreferencesNotificationReport" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationPreferencesNotificationReport } object Optional instance to populate.
     * @return { module:model/OrganizationPreferencesNotificationReport } The populated "OrganizationPreferencesNotificationReport" instance.
     */

    _createClass(
      OrganizationPreferencesNotificationReport,
      [
        {
          key: "getAccepted",

          /**
           * @return { Boolean }
           */
          value: function getAccepted() {
            return this.accepted;
          }
          /**
           * @param { Boolean } accepted
           */
        },
        {
          key: "setAccepted",
          value: function setAccepted(accepted) {
            this.accepted = accepted;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getRefused",
          value: function getRefused() {
            return this.refused;
          }
          /**
           * @param { Boolean } refused
           */
        },
        {
          key: "setRefused",
          value: function setRefused(refused) {
            this.refused = refused;
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
              object = new OrganizationPreferencesNotificationReport();
            }

            if (data.hasOwnProperty("accepted")) {
              object.accepted = _ApiClient.default.convertToType(
                data["accepted"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("refused")) {
              object.refused = _ApiClient.default.convertToType(
                data["refused"],
                "Boolean"
              );
            }

            return object;
          }
        }
      ]
    );

    return OrganizationPreferencesNotificationReport;
  })();

exports.default = OrganizationPreferencesNotificationReport;
