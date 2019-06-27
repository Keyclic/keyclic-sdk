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
 * The Feed model module.
 * @module model/Feed
 */
var Feed =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Feed".
   * @alias module:model/Feed
   * @class
  
   * @param name { String }
  
   * @param type { String }
  
   */
    function Feed(name, type) {
      _classCallCheck(this, Feed);

      this.name = name;
      this.type = type;
      this.id = null;
    }
    /**
     * Constructs a "Feed" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Feed } object Optional instance to populate.
     * @return { module:model/Feed } The populated "Feed" instance.
     */

    _createClass(Feed, null, [
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
            object = new Feed();
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          return object;
        }
      }
    ]);

    return Feed;
  })();

exports.default = Feed;