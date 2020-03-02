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
 * The DeviceLinksSelfIriTemplateMapping model module.
 * @module model/DeviceLinksSelfIriTemplateMapping
 */
var DeviceLinksSelfIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DeviceLinksSelfIriTemplateMapping".
   * @alias module:model/DeviceLinksSelfIriTemplateMapping
   * @class
  
   */
  function DeviceLinksSelfIriTemplateMapping() {
    _classCallCheck(this, DeviceLinksSelfIriTemplateMapping);

    this.device = null;
  }
  /**
   * Constructs a "DeviceLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DeviceLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/DeviceLinksSelfIriTemplateMapping } The populated "DeviceLinksSelfIriTemplateMapping" instance.
   */

  _createClass(
    DeviceLinksSelfIriTemplateMapping,
    [
      {
        key: "getDevice",

        /**
         * @return { String }
         */
        value: function getDevice() {
          return this.device;
        }
        /**
         * @param { String } device
         */
      },
      {
        key: "setDevice",
        value: function setDevice(device) {
          this.device = device;
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
            object = new DeviceLinksSelfIriTemplateMapping();
          }

          if (data.hasOwnProperty("device")) {
            object.device = _ApiClient.default.convertToType(
              data["device"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return DeviceLinksSelfIriTemplateMapping;
})();

exports.default = DeviceLinksSelfIriTemplateMapping;
