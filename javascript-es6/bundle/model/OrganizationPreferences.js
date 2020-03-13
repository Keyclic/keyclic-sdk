"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PreferencesNotification = _interopRequireDefault(
  require("./PreferencesNotification")
);

var _PreferencesReference = _interopRequireDefault(
  require("./PreferencesReference")
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
var OrganizationPreferences = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "OrganizationPreferences".
   * @alias module:model/OrganizationPreferences
   * @class
  
   */
  function OrganizationPreferences() {
    _classCallCheck(this, OrganizationPreferences);

    this.categoryRequired = null;
    this.notification = null;
    this.offline = null;
    this._public = null;
    this.reference = null;
    this.reviewEnabled = null;
    this.notificationType = _PreferencesNotification.default;
    this.referenceType = _PreferencesReference.default;
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
        key: "getCategoryRequired",

        /**
         * @return { Boolean }
         */
        value: function getCategoryRequired() {
          return this.categoryRequired;
        }
        /**
         * @param { Boolean } categoryRequired
         */
      },
      {
        key: "setCategoryRequired",
        value: function setCategoryRequired(categoryRequired) {
          this.categoryRequired = categoryRequired;
        }
        /**
         * @return { module:model/PreferencesNotification }
         */
      },
      {
        key: "getNotification",
        value: function getNotification() {
          return this.notification;
        }
        /**
         * @param { module:model/PreferencesNotification } notification
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
        key: "getOffline",
        value: function getOffline() {
          return this.offline;
        }
        /**
         * @param { Boolean } offline
         */
      },
      {
        key: "setOffline",
        value: function setOffline(offline) {
          this.offline = offline;
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
         * @return { module:model/PreferencesReference }
         */
      },
      {
        key: "getReference",
        value: function getReference() {
          return this.reference;
        }
        /**
         * @param { module:model/PreferencesReference } reference
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

          if (data.hasOwnProperty("categoryRequired")) {
            object.categoryRequired = _ApiClient.default.convertToType(
              data["categoryRequired"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("notification")) {
            object.notification = _ApiClient.default.convertToType(
              data["notification"],
              object.notificationType
            );
          }

          if (data.hasOwnProperty("offline")) {
            object.offline = _ApiClient.default.convertToType(
              data["offline"],
              "Boolean"
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
