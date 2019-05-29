"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PersonPatchPreferences = _interopRequireDefault(
  require("./PersonPatchPreferences")
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
 * The PersonPatch model module.
 * @module model/PersonPatch
 */
var PersonPatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PersonPatch".
   * @alias module:model/PersonPatch
   * @class
  
   */
    function PersonPatch() {
      _classCallCheck(this, PersonPatch);

      this.givenName = null;
      this.familyName = null;
      this.email = null;
      this.jobTitle = null;
      this.image = null;
      this.optIn = null;
      this.preferences = null;
      this.telephone = null;
      this.preferencesType = _PersonPatchPreferences.default;
    }
    /**
     * Constructs a "PersonPatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PersonPatch } object Optional instance to populate.
     * @return { module:model/PersonPatch } The populated "PersonPatch" instance.
     */

    _createClass(PersonPatch, null, [
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
            object = new PersonPatch();
          }

          if (data.hasOwnProperty("givenName")) {
            object.givenName = _ApiClient.default.convertToType(
              data["givenName"],
              "String"
            );
          }

          if (data.hasOwnProperty("familyName")) {
            object.familyName = _ApiClient.default.convertToType(
              data["familyName"],
              "String"
            );
          }

          if (data.hasOwnProperty("email")) {
            object.email = _ApiClient.default.convertToType(
              data["email"],
              "String"
            );
          }

          if (data.hasOwnProperty("jobTitle")) {
            object.jobTitle = _ApiClient.default.convertToType(
              data["jobTitle"],
              "String"
            );
          }

          if (data.hasOwnProperty("image")) {
            object.image = _ApiClient.default.convertToType(
              data["image"],
              "String"
            );
          }

          if (data.hasOwnProperty("optIn")) {
            object.optIn = _ApiClient.default.convertToType(
              data["optIn"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("preferences")) {
            object.preferences = _ApiClient.default.convertToType(
              data["preferences"],
              object.preferencesType
            );
          }

          if (data.hasOwnProperty("telephone")) {
            object.telephone = _ApiClient.default.convertToType(
              data["telephone"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return PersonPatch;
  })();

exports.default = PersonPatch;
