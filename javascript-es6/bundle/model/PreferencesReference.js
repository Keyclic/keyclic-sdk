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
 * The PreferencesReference model module.
 * @module model/PreferencesReference
 */
var PreferencesReference = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PreferencesReference".
   * @alias module:model/PreferencesReference
   * @class
  
   */
  function PreferencesReference() {
    _classCallCheck(this, PreferencesReference);

    this.prefix = null;
  }
  /**
   * Constructs a "PreferencesReference" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PreferencesReference } object Optional instance to populate.
   * @return { module:model/PreferencesReference } The populated "PreferencesReference" instance.
   */

  _createClass(
    PreferencesReference,
    [
      {
        key: "getPrefix",

        /**
         * @return { String }
         */
        value: function getPrefix() {
          return this.prefix;
        }
        /**
         * @param { String } prefix
         */
      },
      {
        key: "setPrefix",
        value: function setPrefix(prefix) {
          this.prefix = prefix;
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
            object = new PreferencesReference();
          }

          if (data.hasOwnProperty("prefix")) {
            object.prefix = _ApiClient.default.convertToType(
              data["prefix"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return PreferencesReference;
})();

exports.default = PreferencesReference;
