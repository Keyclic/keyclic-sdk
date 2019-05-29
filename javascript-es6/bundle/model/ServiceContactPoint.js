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
 * The ServiceContactPoint model module.
 * @module model/ServiceContactPoint
 */
var ServiceContactPoint =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ServiceContactPoint".
   * @alias module:model/ServiceContactPoint
   * @class
  
   * @param telephone { String }
  
   */
    function ServiceContactPoint(telephone) {
      _classCallCheck(this, ServiceContactPoint);

      this.telephone = telephone;
      this.isOpen = null;
    }
    /**
     * Constructs a "ServiceContactPoint" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ServiceContactPoint } object Optional instance to populate.
     * @return { module:model/ServiceContactPoint } The populated "ServiceContactPoint" instance.
     */

    _createClass(ServiceContactPoint, null, [
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
            object = new ServiceContactPoint();
          }

          if (data.hasOwnProperty("telephone")) {
            object.telephone = _ApiClient.default.convertToType(
              data["telephone"],
              "String"
            );
          }

          if (data.hasOwnProperty("isOpen")) {
            object.isOpen = _ApiClient.default.convertToType(
              data["isOpen"],
              "Boolean"
            );
          }

          return object;
        }
      }
    ]);

    return ServiceContactPoint;
  })();

exports.default = ServiceContactPoint;
