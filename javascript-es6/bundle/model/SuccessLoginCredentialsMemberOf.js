"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SuccessLoginCredentialsOrganization = _interopRequireDefault(
  require("./SuccessLoginCredentialsOrganization")
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
 * The SuccessLoginCredentialsMemberOf model module.
 * @module model/SuccessLoginCredentialsMemberOf
 */
var SuccessLoginCredentialsMemberOf =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "SuccessLoginCredentialsMemberOf".
   * @alias module:model/SuccessLoginCredentialsMemberOf
   * @class
  
   */
    function SuccessLoginCredentialsMemberOf() {
      _classCallCheck(this, SuccessLoginCredentialsMemberOf);

      this.id = null;
      this.organization = null;
      this.roles = [];
      this.organizationType = _SuccessLoginCredentialsOrganization.default;
    }
    /**
     * Constructs a "SuccessLoginCredentialsMemberOf" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/SuccessLoginCredentialsMemberOf } object Optional instance to populate.
     * @return { module:model/SuccessLoginCredentialsMemberOf } The populated "SuccessLoginCredentialsMemberOf" instance.
     */

    _createClass(SuccessLoginCredentialsMemberOf, null, [
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
            object = new SuccessLoginCredentialsMemberOf();
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("roles")) {
            object.roles = _ApiClient.default.convertToType(
              data["roles"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]);

    return SuccessLoginCredentialsMemberOf;
  })();

exports.default = SuccessLoginCredentialsMemberOf;
