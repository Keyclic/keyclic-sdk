"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DeviceLinksPerson = _interopRequireDefault(require("./DeviceLinksPerson"));

var _DeviceLinksSelf = _interopRequireDefault(require("./DeviceLinksSelf"));

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
 * The DeviceLinks model module.
 * @module model/DeviceLinks
 */
var DeviceLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DeviceLinks".
   * @alias module:model/DeviceLinks
   * @class
  
   */
    function DeviceLinks() {
      _classCallCheck(this, DeviceLinks);

      this.person = null;
      this.self = null;
      this.personType = _DeviceLinksPerson.default;
      this.selfType = _DeviceLinksSelf.default;
    }
    /**
     * Constructs a "DeviceLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DeviceLinks } object Optional instance to populate.
     * @return { module:model/DeviceLinks } The populated "DeviceLinks" instance.
     */

    _createClass(DeviceLinks, null, [
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
            object = new DeviceLinks();
          }

          if (data.hasOwnProperty("person")) {
            object.person = _ApiClient.default.convertToType(
              data["person"],
              object.personType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          return object;
        }
      }
    ]);

    return DeviceLinks;
  })();

exports.default = DeviceLinks;
