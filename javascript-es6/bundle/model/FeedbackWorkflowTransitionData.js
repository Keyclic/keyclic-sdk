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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The FeedbackWorkflowTransitionData model module.
 * @module model/FeedbackWorkflowTransitionData
 */
var FeedbackWorkflowTransitionData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackWorkflowTransitionData".
   * @alias module:model/FeedbackWorkflowTransitionData
   * @class
  
   * @param transition { module:model/FeedbackWorkflowTransitionData.TransitionEnum }
  
   */
    function FeedbackWorkflowTransitionData(transition) {
      _classCallCheck(this, FeedbackWorkflowTransitionData);

      this.transition = transition;
    }
    /**
     * Constructs a "FeedbackWorkflowTransitionData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackWorkflowTransitionData } object Optional instance to populate.
     * @return { module:model/FeedbackWorkflowTransitionData } The populated "FeedbackWorkflowTransitionData" instance.
     */

    _createClass(FeedbackWorkflowTransitionData, null, [
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
            object = new FeedbackWorkflowTransitionData();
          }

          if (data.hasOwnProperty("transition")) {
            object.transition = _ApiClient.default.convertToType(
              data["transition"],
              "String"
            );
          }

          return object;
        }
        /**
         * Allowed values for the "transition" property.
         * @enum { String }
         */
      }
    ]);

    return FeedbackWorkflowTransitionData;
  })();

exports.default = FeedbackWorkflowTransitionData;

_defineProperty(FeedbackWorkflowTransitionData, "TransitionEnum", {
  /**
   * value: "deliver"
   * @const
   * @readonly
   */
  deliver: "deliver",

  /**
   * value: "dispatch"
   * @const
   * @readonly
   */
  dispatch: "dispatch",

  /**
   * value: "fail"
   * @const
   * @readonly
   */
  fail: "fail",

  /**
   * value: "publish"
   * @const
   * @readonly
   */
  publish: "publish",

  /**
   * value: "process"
   * @const
   * @readonly
   */
  process: "process",

  /**
   * value: "success"
   * @const
   * @readonly
   */
  success: "success"
});
