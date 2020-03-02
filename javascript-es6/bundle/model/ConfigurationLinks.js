"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ConfigurationLinksSelf = _interopRequireDefault(
  require("./ConfigurationLinksSelf")
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
 * The ConfigurationLinks model module.
 * @module model/ConfigurationLinks
 */
var ConfigurationLinks = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ConfigurationLinks".
     * @alias module:model/ConfigurationLinks
     * @class
    
     */
  function ConfigurationLinks() {
    _classCallCheck(this, ConfigurationLinks);

    this.self = null;
    this.selfType = _ConfigurationLinksSelf.default;
  }
  /**
   * Constructs a "ConfigurationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ConfigurationLinks } object Optional instance to populate.
   * @return { module:model/ConfigurationLinks } The populated "ConfigurationLinks" instance.
   */

  _createClass(
    ConfigurationLinks,
    [
      {
        key: "getSelf",

        /**
         * @return { module:model/ConfigurationLinksSelf }
         */
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/ConfigurationLinksSelf } self
         */
      },
      {
        key: "setSelf",
        value: function setSelf(self) {
          this.self = self;
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
            object = new ConfigurationLinks();
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
    ]
  );

  return ConfigurationLinks;
})();

exports.default = ConfigurationLinks;
