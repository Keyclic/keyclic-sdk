"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _State = _interopRequireDefault(require("./State"));

var _Transition = _interopRequireDefault(require("./Transition"));

var _WorkflowState = _interopRequireDefault(require("./WorkflowState"));

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
 * The OperationTypeWorkflow model module.
 * @module model/OperationTypeWorkflow
 */
var OperationTypeWorkflow = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "OperationTypeWorkflow".
     * @alias module:model/OperationTypeWorkflow
     * @class
    
     */
  function OperationTypeWorkflow() {
    _classCallCheck(this, OperationTypeWorkflow);

    this.createdAt = null;
    this.description = null;
    this.end = null;
    this.id = null;
    this.name = null;
    this.start = null;
    this.states = [];
    this.transitions = [];
    this.type = null;
    this.updatedAt = null;
    this.endType = _WorkflowState.default;
    this.startType = _WorkflowState.default;
    this.statesType = _State.default;
    this.transitionsType = _Transition.default;
  }
  /**
   * Constructs a "OperationTypeWorkflow" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationTypeWorkflow } object Optional instance to populate.
   * @return { module:model/OperationTypeWorkflow } The populated "OperationTypeWorkflow" instance.
   */

  _createClass(
    OperationTypeWorkflow,
    [
      {
        key: "getCreatedAt",

        /**
         * @return { Date }
         */
        value: function getCreatedAt() {
          return this.createdAt;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getDescription",
        value: function getDescription() {
          return this.description;
        }
        /**
         * @param { String } description
         */
      },
      {
        key: "setDescription",
        value: function setDescription(description) {
          this.description = description;
        }
        /**
         * @return { module:model/WorkflowState }
         */
      },
      {
        key: "getEnd",
        value: function getEnd() {
          return this.end;
        }
        /**
         * @param { module:model/WorkflowState } end
         */
      },
      {
        key: "setEnd",
        value: function setEnd(end) {
          this.end = end;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getId",
        value: function getId() {
          return this.id;
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
         * @return { module:model/WorkflowState }
         */
      },
      {
        key: "getStart",
        value: function getStart() {
          return this.start;
        }
        /**
         * @param { module:model/WorkflowState } start
         */
      },
      {
        key: "setStart",
        value: function setStart(start) {
          this.start = start;
        }
        /**
         * @return { Array.<module:model/State> }
         */
      },
      {
        key: "getStates",
        value: function getStates() {
          return this.states;
        }
        /**
         * @param { Array.<module:model/State> } states
         */
      },
      {
        key: "setStates",
        value: function setStates(states) {
          this.states = states;
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
         * @return { Date }
         */
      },
      {
        key: "getUpdatedAt",
        value: function getUpdatedAt() {
          return this.updatedAt;
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
            object = new OperationTypeWorkflow();
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("end")) {
            object.end = _ApiClient.default.convertToType(
              data["end"],
              object.endType
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("start")) {
            object.start = _ApiClient.default.convertToType(
              data["start"],
              object.startType
            );
          }

          if (data.hasOwnProperty("states")) {
            object.states = _ApiClient.default.convertToType(data["states"], [
              object.statesType
            ]);
          }

          if (data.hasOwnProperty("transitions")) {
            object.transitions = _ApiClient.default.convertToType(
              data["transitions"],
              [object.transitionsType]
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]
  );

  return OperationTypeWorkflow;
})();

exports.default = OperationTypeWorkflow;
