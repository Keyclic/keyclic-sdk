"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Person = _interopRequireDefault(require("./Person"));

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
 * The FeedbackEmbedded model module.
 * @module model/FeedbackEmbedded
 */
var FeedbackEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "FeedbackEmbedded".
   * @alias module:model/FeedbackEmbedded
   * @class
  
   */
  function FeedbackEmbedded() {
    _classCallCheck(this, FeedbackEmbedded);

    this.reporter = null;
    this.stateTransitions = [];
    this.tracking = null;
    this.reporterType = _Person.default;
  }
  /**
   * Constructs a "FeedbackEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackEmbedded } object Optional instance to populate.
   * @return { module:model/FeedbackEmbedded } The populated "FeedbackEmbedded" instance.
   */

  _createClass(
    FeedbackEmbedded,
    [
      {
        key: "getReporter",

        /**
         * @return { module:model/Person }
         */
        value: function getReporter() {
          return this.reporter;
        }
        /**
         * @param { module:model/Person } reporter
         */
      },
      {
        key: "setReporter",
        value: function setReporter(reporter) {
          this.reporter = reporter;
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
            object = new FeedbackEmbedded();
          }

          if (data.hasOwnProperty("reporter")) {
            object.reporter = _ApiClient.default.convertToType(
              data["reporter"],
              object.reporterType
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

          return object;
        }
      }
    ]
  );

  return FeedbackEmbedded;
})();

exports.default = FeedbackEmbedded;
