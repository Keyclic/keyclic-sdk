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
 * The PersonPatchPreferencesNotification model module.
 * @module model/PersonPatchPreferencesNotification
 */
var PersonPatchPreferencesNotification =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonPatchPreferencesNotification".
   * @alias module:model/PersonPatchPreferencesNotification
   * @class
  
   */
    function PersonPatchPreferencesNotification() {
      _classCallCheck(this, PersonPatchPreferencesNotification);

      this.mail = null;
      this.push = null;
    }
    /**
     * Constructs a "PersonPatchPreferencesNotification" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonPatchPreferencesNotification } object Optional instance to populate.
     * @return { module:model/PersonPatchPreferencesNotification } The populated "PersonPatchPreferencesNotification" instance.
     */

    _createClass(
      PersonPatchPreferencesNotification,
      [
        {
          key: "getMail",

          /**
           * @return { String }
           */
          value: function getMail() {
            return this.mail;
          }
          /**
           * @param { String } mail
           */
        },
        {
          key: "setMail",
          value: function setMail(mail) {
            this.mail = mail;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getPush",
          value: function getPush() {
            return this.push;
          }
          /**
           * @param { String } push
           */
        },
        {
          key: "setPush",
          value: function setPush(push) {
            this.push = push;
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
              object = new PersonPatchPreferencesNotification();
            }

            if (data.hasOwnProperty("mail")) {
              object.mail = _ApiClient.default.convertToType(
                data["mail"],
                "String"
              );
            }

            if (data.hasOwnProperty("push")) {
              object.push = _ApiClient.default.convertToType(
                data["push"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return PersonPatchPreferencesNotification;
  })();

exports.default = PersonPatchPreferencesNotification;
