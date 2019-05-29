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
 * The Condition model module.
 * @module model/Condition
 */
var Condition =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Condition".
   * @alias module:model/Condition
   * @class
  
   */
    function Condition() {
      _classCallCheck(this, Condition);

      this.operator = null;
      this.path = null;
      this.value = [];
    }
    /**
     * Constructs a "Condition" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Condition } object Optional instance to populate.
     * @return { module:model/Condition } The populated "Condition" instance.
     */

    _createClass(Condition, null, [
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
            object = new Condition();
          }

          if (data.hasOwnProperty("operator")) {
            object.operator = _ApiClient.default.convertToType(
              data["operator"],
              "String"
            );
          }

          if (data.hasOwnProperty("path")) {
            object.path = _ApiClient.default.convertToType(
              data["path"],
              "String"
            );
          }

          if (data.hasOwnProperty("value")) {
            object.value = _ApiClient.default.convertToType(
              data["value"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]);

    return Condition;
  })();

exports.default = Condition;
