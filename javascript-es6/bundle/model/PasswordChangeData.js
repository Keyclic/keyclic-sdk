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
 * The PasswordChangeData model module.
 * @module model/PasswordChangeData
 */
var PasswordChangeData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PasswordChangeData".
   * @alias module:model/PasswordChangeData
   * @class
  
   * @param password { String }
  
   */
    function PasswordChangeData(password) {
      _classCallCheck(this, PasswordChangeData);

      this.password = password;
    }
    /**
     * Constructs a "PasswordChangeData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PasswordChangeData } object Optional instance to populate.
     * @return { module:model/PasswordChangeData } The populated "PasswordChangeData" instance.
     */

    _createClass(
      PasswordChangeData,
      [
        {
          key: "getPassword",

          /**
           * @return { String }
           */
          value: function getPassword() {
            return this.password;
          }
          /**
           * @param { String } password
           */
        },
        {
          key: "setPassword",
          value: function setPassword(password) {
            this.password = password;
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
              object = new PasswordChangeData();
            }

            if (data.hasOwnProperty("password")) {
              object.password = _ApiClient.default.convertToType(
                data["password"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return PasswordChangeData;
  })();

exports.default = PasswordChangeData;
