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
 * The ConditionListCondition model module.
 * @module model/ConditionListCondition
 */
var ConditionListCondition = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ConditionListCondition".
   * @alias module:model/ConditionListCondition
   * @class
  
   */
  function ConditionListCondition() {
    _classCallCheck(this, ConditionListCondition);

    this.id = null;
    this.operator = null;
    this.path = null;
    this.type = null;
    this.value = [];
  }
  /**
   * Constructs a "ConditionListCondition" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ConditionListCondition } object Optional instance to populate.
   * @return { module:model/ConditionListCondition } The populated "ConditionListCondition" instance.
   */

  _createClass(
    ConditionListCondition,
    [
      {
        key: "getId",

        /**
         * @return { String }
         */
        value: function getId() {
          return this.id;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getOperator",
        value: function getOperator() {
          return this.operator;
        }
        /**
         * @param { String } operator
         */
      },
      {
        key: "setOperator",
        value: function setOperator(operator) {
          this.operator = operator;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getPath",
        value: function getPath() {
          return this.path;
        }
        /**
         * @param { String } path
         */
      },
      {
        key: "setPath",
        value: function setPath(path) {
          this.path = path;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getType",
        value: function getType() {
          return this.type;
        }
        /**
         * @return { Array.<String> }
         */
      },
      {
        key: "getValue",
        value: function getValue() {
          return this.value;
        }
        /**
         * @param { Array.<String> } value
         */
      },
      {
        key: "setValue",
        value: function setValue(value) {
          this.value = value;
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
            object = new ConditionListCondition();
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
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

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
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
    ]
  );

  return ConditionListCondition;
})();

exports.default = ConditionListCondition;
