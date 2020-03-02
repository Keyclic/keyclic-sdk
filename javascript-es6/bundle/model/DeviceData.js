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
 * The DeviceData model module.
 * @module model/DeviceData
 */
var DeviceData = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DeviceData".
   * @alias module:model/DeviceData
   * @class
  
   * @param token { String }
  
   * @param platform { String }
  
   * @param person { String }
  
   */
  function DeviceData(token, platform, person) {
    _classCallCheck(this, DeviceData);

    this.token = token;
    this.platform = platform;
    this.person = person;
  }
  /**
   * Constructs a "DeviceData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DeviceData } object Optional instance to populate.
   * @return { module:model/DeviceData } The populated "DeviceData" instance.
   */

  _createClass(
    DeviceData,
    [
      {
        key: "getToken",

        /**
         * @return { String }
         */
        value: function getToken() {
          return this.token;
        }
        /**
         * @param { String } token
         */
      },
      {
        key: "setToken",
        value: function setToken(token) {
          this.token = token;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getPlatform",
        value: function getPlatform() {
          return this.platform;
        }
        /**
         * @param { String } platform
         */
      },
      {
        key: "setPlatform",
        value: function setPlatform(platform) {
          this.platform = platform;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getPerson",
        value: function getPerson() {
          return this.person;
        }
        /**
         * @param { String } person
         */
      },
      {
        key: "setPerson",
        value: function setPerson(person) {
          this.person = person;
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
            object = new DeviceData();
          }

          if (data.hasOwnProperty("token")) {
            object.token = _ApiClient.default.convertToType(
              data["token"],
              "String"
            );
          }

          if (data.hasOwnProperty("platform")) {
            object.platform = _ApiClient.default.convertToType(
              data["platform"],
              "String"
            );
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return DeviceData;
})();

exports.default = DeviceData;
