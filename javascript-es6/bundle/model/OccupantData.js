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
 * The OccupantData model module.
 * @module model/OccupantData
 */
var OccupantData = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "OccupantData".
     * @alias module:model/OccupantData
     * @class
    
     * @param member { String }
    
     * @param place { String }
    
     */
  function OccupantData(member, place) {
    _classCallCheck(this, OccupantData);

    this.member = member;
    this.place = place;
  }
  /**
   * Constructs a "OccupantData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OccupantData } object Optional instance to populate.
   * @return { module:model/OccupantData } The populated "OccupantData" instance.
   */

  _createClass(
    OccupantData,
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
        /**
         * @return { String }
         */
      },
      {
        key: "getPlace",
        value: function getPlace() {
          return this.place;
        }
        /**
         * @param { String } place
         */
      },
      {
        key: "setPlace",
        value: function setPlace(place) {
          this.place = place;
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
            object = new OccupantData();
          }

          if (data.hasOwnProperty("member")) {
            object.member = _ApiClient.default.convertToType(
              data["member"],
              "String"
            );
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return OccupantData;
})();

exports.default = OccupantData;
