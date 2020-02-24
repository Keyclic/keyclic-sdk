"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Category = _interopRequireDefault(require("./Category"));

var _DelegationEmbeddedWorkflow = _interopRequireDefault(
  require("./DelegationEmbeddedWorkflow")
);

var _OperationEmbeddedDuration = _interopRequireDefault(
  require("./OperationEmbeddedDuration")
);

var _Place = _interopRequireDefault(require("./Place"));

var _ReportEmbeddedTargetGroups = _interopRequireDefault(
  require("./ReportEmbeddedTargetGroups")
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
 * The ReportEmbedded model module.
 * @module model/ReportEmbedded
 */
var ReportEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportEmbedded".
   * @alias module:model/ReportEmbedded
   * @class
  
   */
    function ReportEmbedded() {
      _classCallCheck(this, ReportEmbedded);

      this.category = null;
      this.duration = null;
      this.place = null;
      this.stateTransitions = [];
      this.targetGroups = [];
      this.tracking = null;
      this.workflow = null;
      this.categoryType = _Category.default;
      this.durationType = _OperationEmbeddedDuration.default;
      this.placeType = _Place.default;
      this.targetGroupsType = _ReportEmbeddedTargetGroups.default;
      this.workflowType = _DelegationEmbeddedWorkflow.default;
    }
    /**
     * Constructs a "ReportEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportEmbedded } object Optional instance to populate.
     * @return { module:model/ReportEmbedded } The populated "ReportEmbedded" instance.
     */

    _createClass(
      ReportEmbedded,
      [
        {
          key: "getCategory",

          /**
           * @return { module:model/Category }
           */
          value: function getCategory() {
            return this.category;
          }
          /**
           * @param { module:model/Category } category
           */
        },
        {
          key: "setCategory",
          value: function setCategory(category) {
            this.category = category;
          }
          /**
           * @return { module:model/OperationEmbeddedDuration }
           */
        },
        {
          key: "getDuration",
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
           * @return { module:model/Place }
           */
        },
        {
          key: "getPlace",
          value: function getPlace() {
            return this.place;
          }
          /**
           * @param { module:model/Place } place
           */
        },
        {
          key: "setPlace",
          value: function setPlace(place) {
            this.place = place;
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
           * @return { Array.<module:model/ReportEmbeddedTargetGroups> }
           */
        },
        {
          key: "getTargetGroups",
          value: function getTargetGroups() {
            return this.targetGroups;
          }
          /**
           * @param { Array.<module:model/ReportEmbeddedTargetGroups> } targetGroups
           */
        },
        {
          key: "setTargetGroups",
          value: function setTargetGroups(targetGroups) {
            this.targetGroups = targetGroups;
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
              object = new ReportEmbedded();
            }

            if (data.hasOwnProperty("category")) {
              object.category = _ApiClient.default.convertToType(
                data["category"],
                object.categoryType
              );
            }

            if (data.hasOwnProperty("duration")) {
              object.duration = _ApiClient.default.convertToType(
                data["duration"],
                object.durationType
              );
            }

            if (data.hasOwnProperty("place")) {
              object.place = _ApiClient.default.convertToType(
                data["place"],
                object.placeType
              );
            }

            if (data.hasOwnProperty("stateTransitions")) {
              object.stateTransitions = _ApiClient.default.convertToType(
                data["stateTransitions"],
                "['String']"
              );
            }

            if (data.hasOwnProperty("targetGroups")) {
              object.targetGroups = _ApiClient.default.convertToType(
                data["targetGroups"],
                [object.targetGroupsType]
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

    return ReportEmbedded;
  })();

exports.default = ReportEmbedded;
