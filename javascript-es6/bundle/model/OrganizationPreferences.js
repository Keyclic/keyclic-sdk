"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationPreferencesNotification = _interopRequireDefault(
  require("./OrganizationPreferencesNotification")
);

var _OrganizationPreferencesReference = _interopRequireDefault(
  require("./OrganizationPreferencesReference")
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
 * The OrganizationPreferences model module.
 * @module model/OrganizationPreferences
 */
var OrganizationPreferences =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationPreferences".
   * @alias module:model/OrganizationPreferences
   * @class
  
   * @param _public { Boolean }
  
   */
    function OrganizationPreferences(_public) {
      _classCallCheck(this, OrganizationPreferences);

      this.notification = null;
      this._public = _public;
      this.reference = null;
      this.reviewEnabled = null;
      this.notificationType = _OrganizationPreferencesNotification.default;
      this.referenceType = _OrganizationPreferencesReference.default;
    }
    /**
     * Constructs a "OrganizationPreferences" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationPreferences } object Optional instance to populate.
     * @return { module:model/OrganizationPreferences } The populated "OrganizationPreferences" instance.
     */

    _createClass(
      OrganizationPreferences,
      [
        {
          key: "getNotification",

          /**
           * @return { module:model/OrganizationPreferencesNotification }
           */
          value: function getNotification() {
            return this.notification;
          }
          /**
           * @param { module:model/OrganizationPreferencesNotification } notification
           */
        },
        {
          key: "setNotification",
          value: function setNotification(notification) {
            this.notification = notification;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getPublic",
          value: function getPublic() {
            return this._public;
          }
          /**
           * @param { Boolean } _public
           */
        },
        {
          key: "setPublic",
          value: function setPublic(_public) {
            this._public = _public;
          }
          /**
           * @return { module:model/OrganizationPreferencesReference }
           */
        },
        {
          key: "getReference",
          value: function getReference() {
            return this.reference;
          }
          /**
           * @param { module:model/OrganizationPreferencesReference } reference
           */
        },
        {
          key: "setReference",
          value: function setReference(reference) {
            this.reference = reference;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getReviewEnabled",
          value: function getReviewEnabled() {
            return this.reviewEnabled;
          }
          /**
           * @param { Boolean } reviewEnabled
           */
        },
        {
          key: "setReviewEnabled",
          value: function setReviewEnabled(reviewEnabled) {
            this.reviewEnabled = reviewEnabled;
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
              object = new OrganizationPreferences();
            }

            if (data.hasOwnProperty("notification")) {
              object.notification = _ApiClient.default.convertToType(
                data["notification"],
                object.notificationType
              );
            }

            if (data.hasOwnProperty("public")) {
              object._public = _ApiClient.default.convertToType(
                data["public"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("reference")) {
              object.reference = _ApiClient.default.convertToType(
                data["reference"],
                object.referenceType
              );
            }

            if (data.hasOwnProperty("reviewEnabled")) {
              object.reviewEnabled = _ApiClient.default.convertToType(
                data["reviewEnabled"],
                "Boolean"
              );
            }

            return object;
          }
        }
      ]
    );

    return OrganizationPreferences;
  })();

exports.default = OrganizationPreferences;
