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
 * The DelegateData model module.
 * @module model/DelegateData
 */
var DelegateData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegateData".
   * @alias module:model/DelegateData
   * @class
  
   * @param report { String }
  
   */
    function DelegateData(report) {
      _classCallCheck(this, DelegateData);

      this.description = null;
      this.organization = null;
      this.report = report;
      this.service = null;
    }
    /**
     * Constructs a "DelegateData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegateData } object Optional instance to populate.
     * @return { module:model/DelegateData } The populated "DelegateData" instance.
     */

    _createClass(DelegateData, null, [
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
            object = new DelegateData();
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              "String"
            );
          }

          if (data.hasOwnProperty("report")) {
            object.report = _ApiClient.default.convertToType(
              data["report"],
              "String"
            );
          }

          if (data.hasOwnProperty("service")) {
            object.service = _ApiClient.default.convertToType(
              data["service"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return DelegateData;
  })();

exports.default = DelegateData;
