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
 * The MemberContactPoint model module.
 * @module model/MemberContactPoint
 */
var MemberContactPoint = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "MemberContactPoint".
     * @alias module:model/MemberContactPoint
     * @class
    
     */
  function MemberContactPoint() {
    _classCallCheck(this, MemberContactPoint);

    this.email = null;
    this.name = null;
    this.telephone = null;
  }
  /**
   * Constructs a "MemberContactPoint" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberContactPoint } object Optional instance to populate.
   * @return { module:model/MemberContactPoint } The populated "MemberContactPoint" instance.
   */

  _createClass(
    MemberContactPoint,
    [
      {
        key: "getEmail",

        /**
         * @return { String }
         */
        value: function getEmail() {
          return this.email;
        }
        /**
         * @param { String } email
         */
      },
      {
        key: "setEmail",
        value: function setEmail(email) {
          this.email = email;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getName",
        value: function getName() {
          return this.name;
        }
        /**
         * @param { String } name
         */
      },
      {
        key: "setName",
        value: function setName(name) {
          this.name = name;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getTelephone",
        value: function getTelephone() {
          return this.telephone;
        }
        /**
         * @param { String } telephone
         */
      },
      {
        key: "setTelephone",
        value: function setTelephone(telephone) {
          this.telephone = telephone;
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
            object = new MemberContactPoint();
          }

          if (data.hasOwnProperty("email")) {
            object.email = _ApiClient.default.convertToType(
              data["email"],
              "String"
            );
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
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
    ]
  );

  return MemberContactPoint;
})();

exports.default = MemberContactPoint;
