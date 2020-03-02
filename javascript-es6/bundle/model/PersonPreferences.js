"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PreferencesNotification = _interopRequireDefault(
  require("./PreferencesNotification")
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
 * The PersonPreferences model module.
 * @module model/PersonPreferences
 */
var PersonPreferences = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PersonPreferences".
   * @alias module:model/PersonPreferences
   * @class
  
   */
  function PersonPreferences() {
    _classCallCheck(this, PersonPreferences);

    this.notification = null;
    this.notificationType = _PreferencesNotification.default;
  }
  /**
   * Constructs a "PersonPreferences" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPreferences } object Optional instance to populate.
   * @return { module:model/PersonPreferences } The populated "PersonPreferences" instance.
   */

  _createClass(
    PersonPreferences,
    [
      {
        key: "getNotification",

        /**
         * @return { module:model/PreferencesNotification }
         */
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
            object = new PersonPreferences();
          }

          if (data.hasOwnProperty("notification")) {
            object.notification = _ApiClient.default.convertToType(
              data["notification"],
              object.notificationType
            );
          }

          return object;
        }
      }
    ]
  );

  return PersonPreferences;
})();

exports.default = PersonPreferences;
