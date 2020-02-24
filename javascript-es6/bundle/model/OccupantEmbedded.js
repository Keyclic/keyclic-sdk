"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Member = _interopRequireDefault(require("./Member"));

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
 * The OccupantEmbedded model module.
 * @module model/OccupantEmbedded
 */
var OccupantEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantEmbedded".
   * @alias module:model/OccupantEmbedded
   * @class
  
   */
    function OccupantEmbedded() {
      _classCallCheck(this, OccupantEmbedded);

      this.member = null;
      this.memberType = _Member.default;
    }
    /**
     * Constructs a "OccupantEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantEmbedded } object Optional instance to populate.
     * @return { module:model/OccupantEmbedded } The populated "OccupantEmbedded" instance.
     */

    _createClass(
      OccupantEmbedded,
      [
        {
          key: "getMember",

          /**
           * @return { module:model/Member }
           */
          value: function getMember() {
            return this.member;
          }
          /**
           * @param { module:model/Member } member
           */
        },
        {
          key: "setMember",
          value: function setMember(member) {
            this.member = member;
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
              object = new OccupantEmbedded();
            }

            if (data.hasOwnProperty("member")) {
              object.member = _ApiClient.default.convertToType(
                data["member"],
                object.memberType
              );
            }

            return object;
          }
        }
      ]
    );

    return OccupantEmbedded;
  })();

exports.default = OccupantEmbedded;
