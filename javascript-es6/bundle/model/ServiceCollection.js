"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Service = _interopRequireDefault(require("./Service"));

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
 * The ServiceCollection model module.
 * @module model/ServiceCollection
 */
var ServiceCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ServiceCollection".
   * @alias module:model/ServiceCollection
   * @class
  
   */
    function ServiceCollection() {
      _classCallCheck(this, ServiceCollection);

      this.items = [];
      this.itemsType = _Service.default;
    }
    /**
     * Constructs a "ServiceCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ServiceCollection } object Optional instance to populate.
     * @return { module:model/ServiceCollection } The populated "ServiceCollection" instance.
     */

    _createClass(ServiceCollection, null, [
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
            object = new ServiceCollection();
          }

          if (data.hasOwnProperty("items")) {
            object.items = _ApiClient.default.convertToType(data["items"], [
              object.itemsType
            ]);
          }

          return object;
        }
      }
    ]);

    return ServiceCollection;
  })();

exports.default = ServiceCollection;
