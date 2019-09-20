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
 * The RegisterData model module.
 * @module model/RegisterData
 */
var RegisterData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "RegisterData".
   * @alias module:model/RegisterData
   * @class
  
   * @param email { String }
  
   * @param password { String }
  
   */
    function RegisterData(email, password) {
      _classCallCheck(this, RegisterData);

      this.email = email;
      this.password = password;
    }
    /**
     * Constructs a "RegisterData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/RegisterData } object Optional instance to populate.
     * @return { module:model/RegisterData } The populated "RegisterData" instance.
     */

    _createClass(
      RegisterData,
      [
        {
          key: "getEmail",

          /**
           * @return { String }
           */
          value: function getEmail() {
            return this.email;
          }
          /**
           * @param { String } email
           */
        },
        {
          key: "setEmail",
          value: function setEmail(email) {
            this.email = email;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getPassword",
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
              object = new RegisterData();
            }

            if (data.hasOwnProperty("email")) {
              object.email = _ApiClient.default.convertToType(
                data["email"],
                "String"
              );
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

    return RegisterData;
  })();

exports.default = RegisterData;
