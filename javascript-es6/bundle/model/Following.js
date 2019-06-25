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
 * The Following model module.
 * @module model/Following
 */
var Following =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Following".
   * @alias module:model/Following
   * @class
  
   */
    function Following() {
      _classCallCheck(this, Following);

      this.createdAt = null;
      this.feedId = null;
      this.targetId = null;
      this.updatedAt = null;
    }
    /**
     * Constructs a "Following" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Following } object Optional instance to populate.
     * @return { module:model/Following } The populated "Following" instance.
     */

    _createClass(Following, null, [
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
            object = new Following();
          }

          if (data.hasOwnProperty("created_at")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["created_at"],
              "String"
            );
          }

          if (data.hasOwnProperty("feed_id")) {
            object.feedId = _ApiClient.default.convertToType(
              data["feed_id"],
              "String"
            );
          }

          if (data.hasOwnProperty("target_id")) {
            object.targetId = _ApiClient.default.convertToType(
              data["target_id"],
              "String"
            );
          }

          if (data.hasOwnProperty("updated_at")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updated_at"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return Following;
  })();

exports.default = Following;
