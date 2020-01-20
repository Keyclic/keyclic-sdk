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
 * The Permission model module.
 * @module model/Permission
 */
var Permission =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Permission".
   * @alias module:model/Permission
   * @class
  
   */
    function Permission() {
      _classCallCheck(this, Permission);

      this.targetGroup = null;
    }
    /**
     * Constructs a "Permission" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Permission } object Optional instance to populate.
     * @return { module:model/Permission } The populated "Permission" instance.
     */

    _createClass(
      Permission,
      [
        {
          key: "getTargetGroup",

          /**
           * @return { String }
           */
          value: function getTargetGroup() {
            return this.targetGroup;
          }
          /**
           * @param { String } targetGroup
           */
        },
        {
          key: "setTargetGroup",
          value: function setTargetGroup(targetGroup) {
            this.targetGroup = targetGroup;
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
              object = new Permission();
            }

            if (data.hasOwnProperty("targetGroup")) {
              object.targetGroup = _ApiClient.default.convertToType(
                data["targetGroup"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Permission;
  })();

exports.default = Permission;
