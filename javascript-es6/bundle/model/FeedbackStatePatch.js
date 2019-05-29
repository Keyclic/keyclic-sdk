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
 * The FeedbackStatePatch model module.
 * @module model/FeedbackStatePatch
 */
var FeedbackStatePatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackStatePatch".
   * @alias module:model/FeedbackStatePatch
   * @class
  
   * @param transition { module:model/FeedbackStatePatch.TransitionEnum }
  
   */
    function FeedbackStatePatch(transition) {
      _classCallCheck(this, FeedbackStatePatch);

      this.transition = transition;
    }
    /**
     * Constructs a "FeedbackStatePatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackStatePatch } object Optional instance to populate.
     * @return { module:model/FeedbackStatePatch } The populated "FeedbackStatePatch" instance.
     */

    _createClass(FeedbackStatePatch, null, [
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
            object = new FeedbackStatePatch();
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

    return FeedbackStatePatch;
  })();

exports.default = FeedbackStatePatch;

_defineProperty(FeedbackStatePatch, "TransitionEnum", {
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
