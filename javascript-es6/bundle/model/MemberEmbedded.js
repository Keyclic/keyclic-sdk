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
 * The MemberEmbedded model module.
 * @module model/MemberEmbedded
 */
var MemberEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "MemberEmbedded".
   * @alias module:model/MemberEmbedded
   * @class
  
   */
    function MemberEmbedded() {
      _classCallCheck(this, MemberEmbedded);

      this.availableRoles = [];
    }
    /**
     * Constructs a "MemberEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/MemberEmbedded } object Optional instance to populate.
     * @return { module:model/MemberEmbedded } The populated "MemberEmbedded" instance.
     */

    _createClass(
      MemberEmbedded,
      [
        {
          key: "getAvailableRoles",

          /**
           * @return { Array.<String> }
           */
          value: function getAvailableRoles() {
            return this.availableRoles;
          }
          /**
           * @param { Array.<String> } availableRoles
           */
        },
        {
          key: "setAvailableRoles",
          value: function setAvailableRoles(availableRoles) {
            this.availableRoles = availableRoles;
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
              object = new MemberEmbedded();
            }

            if (data.hasOwnProperty("availableRoles")) {
              object.availableRoles = _ApiClient.default.convertToType(
                data["availableRoles"],
                "['String']"
              );
            }

            return object;
          }
        }
      ]
    );

    return MemberEmbedded;
  })();

exports.default = MemberEmbedded;
