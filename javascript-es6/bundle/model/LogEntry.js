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
 * The LogEntry model module.
 * @module model/LogEntry
 */
var LogEntry =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "LogEntry".
   * @alias module:model/LogEntry
   * @class
  
   * @param action { String }
  
   * @param loggedAt { Date }
  
   * @param objectId { String }
  
   * @param version { String }
  
   * @param data { Array.<String> }
  
   */
    function LogEntry(action, loggedAt, objectId, version, data) {
      _classCallCheck(this, LogEntry);

      this.action = action;
      this.loggedAt = loggedAt;
      this.objectId = objectId;
      this.version = version;
      this.data = data;
    }
    /**
     * Constructs a "LogEntry" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/LogEntry } object Optional instance to populate.
     * @return { module:model/LogEntry } The populated "LogEntry" instance.
     */

    _createClass(LogEntry, null, [
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
            object = new LogEntry();
          }

          if (data.hasOwnProperty("action")) {
            object.action = _ApiClient.default.convertToType(
              data["action"],
              "String"
            );
          }

          if (data.hasOwnProperty("loggedAt")) {
            object.loggedAt = _ApiClient.default.convertToType(
              data["loggedAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("objectId")) {
            object.objectId = _ApiClient.default.convertToType(
              data["objectId"],
              "String"
            );
          }

          if (data.hasOwnProperty("version")) {
            object.version = _ApiClient.default.convertToType(
              data["version"],
              "String"
            );
          }

          if (data.hasOwnProperty("data")) {
            object.data = _ApiClient.default.convertToType(
              data["data"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]);

    return LogEntry;
  })();

exports.default = LogEntry;
