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
 * The PlacePreferences model module.
 * @module model/PlacePreferences
 */
var PlacePreferences = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PlacePreferences".
   * @alias module:model/PlacePreferences
   * @class
  
   */
  function PlacePreferences() {
    _classCallCheck(this, PlacePreferences);

    this._public = null;
  }
  /**
   * Constructs a "PlacePreferences" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlacePreferences } object Optional instance to populate.
   * @return { module:model/PlacePreferences } The populated "PlacePreferences" instance.
   */

  _createClass(
    PlacePreferences,
    [
      {
        key: "getPublic",

        /**
         * @return { Boolean }
         */
        value: function getPublic() {
          return this._public;
        }
        /**
         * @param { Boolean } _public
         */
      },
      {
        key: "setPublic",
        value: function setPublic(_public) {
          this._public = _public;
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
            object = new PlacePreferences();
          }

          if (data.hasOwnProperty("public")) {
            object._public = _ApiClient.default.convertToType(
              data["public"],
              "Boolean"
            );
          }

          return object;
        }
      }
    ]
  );

  return PlacePreferences;
})();

exports.default = PlacePreferences;
