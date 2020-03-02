"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _State = _interopRequireDefault(require("./State"));

var _Transition = _interopRequireDefault(require("./Transition"));

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
 * The DelegationEmbeddedWorkflow model module.
 * @module model/DelegationEmbeddedWorkflow
 */
var DelegationEmbeddedWorkflow = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "DelegationEmbeddedWorkflow".
   * @alias module:model/DelegationEmbeddedWorkflow
   * @class
  
   */
  function DelegationEmbeddedWorkflow() {
    _classCallCheck(this, DelegationEmbeddedWorkflow);

    this.state = null;
    this.transitions = [];
    this.stateType = _State.default;
    this.transitionsType = _Transition.default;
  }
  /**
   * Constructs a "DelegationEmbeddedWorkflow" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationEmbeddedWorkflow } object Optional instance to populate.
   * @return { module:model/DelegationEmbeddedWorkflow } The populated "DelegationEmbeddedWorkflow" instance.
   */

  _createClass(
    DelegationEmbeddedWorkflow,
    [
      {
        key: "getState",

        /**
         * @return { module:model/State }
         */
        value: function getState() {
          return this.state;
        }
        /**
         * @param { module:model/State } state
         */
      },
      {
        key: "setState",
        value: function setState(state) {
          this.state = state;
        }
        /**
         * @return { Array.<module:model/Transition> }
         */
      },
      {
        key: "getTransitions",
        value: function getTransitions() {
          return this.transitions;
        }
        /**
         * @param { Array.<module:model/Transition> } transitions
         */
      },
      {
        key: "setTransitions",
        value: function setTransitions(transitions) {
          this.transitions = transitions;
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
            object = new DelegationEmbeddedWorkflow();
          }

          if (data.hasOwnProperty("state")) {
            object.state = _ApiClient.default.convertToType(
              data["state"],
              object.stateType
            );
          }

          if (data.hasOwnProperty("transitions")) {
            object.transitions = _ApiClient.default.convertToType(
              data["transitions"],
              [object.transitionsType]
            );
          }

          return object;
        }
      }
    ]
  );

  return DelegationEmbeddedWorkflow;
})();

exports.default = DelegationEmbeddedWorkflow;
