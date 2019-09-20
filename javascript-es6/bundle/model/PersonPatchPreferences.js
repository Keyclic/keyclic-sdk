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
 * The PersonPatchPreferences model module.
 * @module model/PersonPatchPreferences
 */
var PersonPatchPreferences =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonPatchPreferences".
   * @alias module:model/PersonPatchPreferences
   * @class
  
   */
    function PersonPatchPreferences() {
      _classCallCheck(this, PersonPatchPreferences);

      this.messageEmailEnabled = null;
      this.messagePushEnabled = null;
    }
    /**
     * Constructs a "PersonPatchPreferences" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonPatchPreferences } object Optional instance to populate.
     * @return { module:model/PersonPatchPreferences } The populated "PersonPatchPreferences" instance.
     */

    _createClass(
      PersonPatchPreferences,
      [
        {
          key: "getMessageEmailEnabled",

          /**
           * @return { Boolean }
           */
          value: function getMessageEmailEnabled() {
            return this.messageEmailEnabled;
          }
          /**
           * @param { Boolean } messageEmailEnabled
           */
        },
        {
          key: "setMessageEmailEnabled",
          value: function setMessageEmailEnabled(messageEmailEnabled) {
            this.messageEmailEnabled = messageEmailEnabled;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getMessagePushEnabled",
          value: function getMessagePushEnabled() {
            return this.messagePushEnabled;
          }
          /**
           * @param { Boolean } messagePushEnabled
           */
        },
        {
          key: "setMessagePushEnabled",
          value: function setMessagePushEnabled(messagePushEnabled) {
            this.messagePushEnabled = messagePushEnabled;
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
              object = new PersonPatchPreferences();
            }

            if (data.hasOwnProperty("messageEmailEnabled")) {
              object.messageEmailEnabled = _ApiClient.default.convertToType(
                data["messageEmailEnabled"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("messagePushEnabled")) {
              object.messagePushEnabled = _ApiClient.default.convertToType(
                data["messagePushEnabled"],
                "Boolean"
              );
            }

            return object;
          }
        }
      ]
    );

    return PersonPatchPreferences;
  })();

exports.default = PersonPatchPreferences;
