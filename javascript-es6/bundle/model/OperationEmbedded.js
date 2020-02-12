"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationEmbeddedWorkflow = _interopRequireDefault(
  require("./DelegationEmbeddedWorkflow")
);

var _OperationEmbeddedDuration = _interopRequireDefault(
  require("./OperationEmbeddedDuration")
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
 * The OperationEmbedded model module.
 * @module model/OperationEmbedded
 */
var OperationEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationEmbedded".
   * @alias module:model/OperationEmbedded
   * @class
  
   */
    function OperationEmbedded() {
      _classCallCheck(this, OperationEmbedded);

      this.duration = null;
      this.stateTransitions = [];
      this.tracking = null;
      this.workflow = null;
      this.durationType = _OperationEmbeddedDuration.default;
      this.workflowType = _DelegationEmbeddedWorkflow.default;
    }
    /**
     * Constructs a "OperationEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationEmbedded } object Optional instance to populate.
     * @return { module:model/OperationEmbedded } The populated "OperationEmbedded" instance.
     */

    _createClass(
      OperationEmbedded,
      [
        {
          key: "getDuration",

          /**
           * @return { module:model/OperationEmbeddedDuration }
           */
          value: function getDuration() {
            return this.duration;
          }
          /**
           * @param { module:model/OperationEmbeddedDuration } duration
           */
        },
        {
          key: "setDuration",
          value: function setDuration(duration) {
            this.duration = duration;
          }
          /**
           * @return { Array.<String> }
           */
        },
        {
          key: "getStateTransitions",
          value: function getStateTransitions() {
            return this.stateTransitions;
          }
          /**
           * @param { Array.<String> } stateTransitions
           */
        },
        {
          key: "setStateTransitions",
          value: function setStateTransitions(stateTransitions) {
            this.stateTransitions = stateTransitions;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getTracking",
          value: function getTracking() {
            return this.tracking;
          }
          /**
           * @param { String } tracking
           */
        },
        {
          key: "setTracking",
          value: function setTracking(tracking) {
            this.tracking = tracking;
          }
          /**
           * @return { module:model/DelegationEmbeddedWorkflow }
           */
        },
        {
          key: "getWorkflow",
          value: function getWorkflow() {
            return this.workflow;
          }
          /**
           * @param { module:model/DelegationEmbeddedWorkflow } workflow
           */
        },
        {
          key: "setWorkflow",
          value: function setWorkflow(workflow) {
            this.workflow = workflow;
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
              object = new OperationEmbedded();
            }

            if (data.hasOwnProperty("duration")) {
              object.duration = _ApiClient.default.convertToType(
                data["duration"],
                object.durationType
              );
            }

            if (data.hasOwnProperty("stateTransitions")) {
              object.stateTransitions = _ApiClient.default.convertToType(
                data["stateTransitions"],
                "['String']"
              );
            }

            if (data.hasOwnProperty("tracking")) {
              object.tracking = _ApiClient.default.convertToType(
                data["tracking"],
                "String"
              );
            }

            if (data.hasOwnProperty("workflow")) {
              object.workflow = _ApiClient.default.convertToType(
                data["workflow"],
                object.workflowType
              );
            }

            return object;
          }
        }
      ]
    );

    return OperationEmbedded;
  })();

exports.default = OperationEmbedded;
