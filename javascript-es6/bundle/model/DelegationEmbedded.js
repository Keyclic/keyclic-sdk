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
 * The DelegationEmbedded model module.
 * @module model/DelegationEmbedded
 */
var DelegationEmbedded =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegationEmbedded".
   * @alias module:model/DelegationEmbedded
   * @class
  
   */
    function DelegationEmbedded() {
      _classCallCheck(this, DelegationEmbedded);

      this.stateTransitions = [];
    }
    /**
     * Constructs a "DelegationEmbedded" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationEmbedded } object Optional instance to populate.
     * @return { module:model/DelegationEmbedded } The populated "DelegationEmbedded" instance.
     */

    _createClass(
      DelegationEmbedded,
      [
        {
          key: "getStateTransitions",

          /**
           * @return { Array.<String> }
           */
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
              object = new DelegationEmbedded();
            }

            if (data.hasOwnProperty("stateTransitions")) {
              object.stateTransitions = _ApiClient.default.convertToType(
                data["stateTransitions"],
                "['String']"
              );
            }

            return object;
          }
        }
      ]
    );

    return DelegationEmbedded;
  })();

exports.default = DelegationEmbedded;
