"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ConditionListCondition = _interopRequireDefault(
  require("./ConditionListCondition")
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
 * The PropertyConditionList model module.
 * @module model/PropertyConditionList
 */
var PropertyConditionList = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PropertyConditionList".
   * @alias module:model/PropertyConditionList
   * @class
  
   */
  function PropertyConditionList() {
    _classCallCheck(this, PropertyConditionList);

    this.allOf = [];
    this.allOfType = _ConditionListCondition.default;
  }
  /**
   * Constructs a "PropertyConditionList" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PropertyConditionList } object Optional instance to populate.
   * @return { module:model/PropertyConditionList } The populated "PropertyConditionList" instance.
   */

  _createClass(
    PropertyConditionList,
    [
      {
        key: "getAllOf",

        /**
         * @return { Array.<module:model/ConditionListCondition> }
         */
        value: function getAllOf() {
          return this.allOf;
        }
        /**
         * @param { Array.<module:model/ConditionListCondition> } allOf
         */
      },
      {
        key: "setAllOf",
        value: function setAllOf(allOf) {
          this.allOf = allOf;
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
            object = new PropertyConditionList();
          }

          if (data.hasOwnProperty("allOf")) {
            object.allOf = _ApiClient.default.convertToType(data["allOf"], [
              object.allOfType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return PropertyConditionList;
})();

exports.default = PropertyConditionList;
