"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OrganizationPreferencesReference = _interopRequireDefault(
  require("./OrganizationPreferencesReference")
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
 * The OrganizationPatchPreferences model module.
 * @module model/OrganizationPatchPreferences
 */
var OrganizationPatchPreferences =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationPatchPreferences".
   * @alias module:model/OrganizationPatchPreferences
   * @class
  
   */
    function OrganizationPatchPreferences() {
      _classCallCheck(this, OrganizationPatchPreferences);

      this.reference = null;
      this.referenceType = _OrganizationPreferencesReference.default;
    }
    /**
     * Constructs a "OrganizationPatchPreferences" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationPatchPreferences } object Optional instance to populate.
     * @return { module:model/OrganizationPatchPreferences } The populated "OrganizationPatchPreferences" instance.
     */

    _createClass(OrganizationPatchPreferences, null, [
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
            object = new OrganizationPatchPreferences();
          }

          if (data.hasOwnProperty("reference")) {
            object.reference = _ApiClient.default.convertToType(
              data["reference"],
              object.referenceType
            );
          }

          return object;
        }
      }
    ]);

    return OrganizationPatchPreferences;
  })();

exports.default = OrganizationPatchPreferences;
