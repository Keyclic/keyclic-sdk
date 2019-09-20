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
 * The AssignData model module.
 * @module model/AssignData
 */
var AssignData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "AssignData".
   * @alias module:model/AssignData
   * @class
  
   * @param member { String }
  
   */
    function AssignData(member) {
      _classCallCheck(this, AssignData);

      this.member = member;
    }
    /**
     * Constructs a "AssignData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/AssignData } object Optional instance to populate.
     * @return { module:model/AssignData } The populated "AssignData" instance.
     */

    _createClass(
      AssignData,
      [
        {
          key: "getMember",

          /**
           * @return { String }
           */
          value: function getMember() {
            return this.member;
          }
          /**
           * @param { String } member
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
              object = new AssignData();
            }

            if (data.hasOwnProperty("member")) {
              object.member = _ApiClient.default.convertToType(
                data["member"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return AssignData;
  })();

exports.default = AssignData;
