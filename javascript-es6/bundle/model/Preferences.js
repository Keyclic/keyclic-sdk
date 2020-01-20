"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Notification = _interopRequireDefault(require("./Notification"));

var _Reference = _interopRequireDefault(require("./Reference"));

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
 * The Preferences model module.
 * @module model/Preferences
 */
var Preferences =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Preferences".
   * @alias module:model/Preferences
   * @class
  
   */
    function Preferences() {
      _classCallCheck(this, Preferences);

      this.notification = null;
      this.offline = null;
      this._public = null;
      this.reference = null;
      this.reviewEnabled = null;
      this.notificationType = _Notification.default;
      this.referenceType = _Reference.default;
    }
    /**
     * Constructs a "Preferences" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Preferences } object Optional instance to populate.
     * @return { module:model/Preferences } The populated "Preferences" instance.
     */

    _createClass(
      Preferences,
      [
        {
          key: "getNotification",

          /**
           * @return { module:model/Notification }
           */
          value: function getNotification() {
            return this.notification;
          }
          /**
           * @param { module:model/Notification } notification
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
           * @return { module:model/Reference }
           */
        },
        {
          key: "getReference",
          value: function getReference() {
            return this.reference;
          }
          /**
           * @param { module:model/Reference } reference
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
              object = new Preferences();
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

    return Preferences;
  })();

exports.default = Preferences;
