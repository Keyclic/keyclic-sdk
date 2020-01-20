"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Choice = _interopRequireDefault(require("./Choice"));

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
 * The Items model module.
 * @module model/Items
 */
var Items =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Items".
   * @alias module:model/Items
   * @class
  
   */
    function Items() {
      _classCallCheck(this, Items);

      this.oneOf = [];
      this.oneOfType = _Choice.default;
    }
    /**
     * Constructs a "Items" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Items } object Optional instance to populate.
     * @return { module:model/Items } The populated "Items" instance.
     */

    _createClass(
      Items,
      [
        {
          key: "getOneOf",

          /**
           * @return { Array.<module:model/Choice> }
           */
          value: function getOneOf() {
            return this.oneOf;
          }
          /**
           * @param { Array.<module:model/Choice> } oneOf
           */
        },
        {
          key: "setOneOf",
          value: function setOneOf(oneOf) {
            this.oneOf = oneOf;
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
              object = new Items();
            }

            if (data.hasOwnProperty("oneOf")) {
              object.oneOf = _ApiClient.default.convertToType(data["oneOf"], [
                object.oneOfType
              ]);
            }

            return object;
          }
        }
      ]
    );

    return Items;
  })();

exports.default = Items;
