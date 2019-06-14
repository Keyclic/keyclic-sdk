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
 * The Chart model module.
 * @module model/Chart
 */
var Chart =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Chart".
   * @alias module:model/Chart
   * @class
  
   * @param labels { Array.<String> }
  
   * @param data { Array.<Number> }
  
   */
    function Chart(labels, data) {
      _classCallCheck(this, Chart);

      this.labels = labels;
      this.data = data;
    }
    /**
     * Constructs a "Chart" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Chart } object Optional instance to populate.
     * @return { module:model/Chart } The populated "Chart" instance.
     */

    _createClass(Chart, null, [
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
            object = new Chart();
          }

          if (data.hasOwnProperty("labels")) {
            object.labels = _ApiClient.default.convertToType(
              data["labels"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("data")) {
            object.data = _ApiClient.default.convertToType(
              data["data"],
              "['Number']"
            );
          }

          return object;
        }
      }
    ]);

    return Chart;
  })();

exports.default = Chart;