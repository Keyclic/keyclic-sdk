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
 * The OrganizationPreferencesReference model module.
 * @module model/OrganizationPreferencesReference
 */
var OrganizationPreferencesReference =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationPreferencesReference".
   * @alias module:model/OrganizationPreferencesReference
   * @class
  
   */
    function OrganizationPreferencesReference() {
      _classCallCheck(this, OrganizationPreferencesReference);

      this.prefix = null;
    }
    /**
     * Constructs a "OrganizationPreferencesReference" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationPreferencesReference } object Optional instance to populate.
     * @return { module:model/OrganizationPreferencesReference } The populated "OrganizationPreferencesReference" instance.
     */

    _createClass(
      OrganizationPreferencesReference,
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
              object = new OrganizationPreferencesReference();
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

    return OrganizationPreferencesReference;
  })();

exports.default = OrganizationPreferencesReference;
