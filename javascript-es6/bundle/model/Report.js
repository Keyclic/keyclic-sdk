"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportEmbedded = _interopRequireDefault(require("./ReportEmbedded"));

var _ReportLinks = _interopRequireDefault(require("./ReportLinks"));

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
 * The Report model module.
 * @module model/Report
 */
var Report =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Report".
   * @alias module:model/Report
   * @class
  
   * @param priority { Number }
  
   * @param reference { String }
  
   * @param id { String }
  
   * @param state { Array.<String> }
  
   * @param updatedAt { Date }
  
   */
    function Report(priority, reference, id, state, updatedAt) {
      _classCallCheck(this, Report);

      this.description = null;
      this.priority = priority;
      this.reference = reference;
      this.tags = [];
      this.id = id;
      this.identificationNumber = null;
      this.state = state;
      this.createdAt = null;
      this.updatedAt = updatedAt;
      this.type = null;
      this.links = null;
      this.embedded = null;
      this.linksType = _ReportLinks.default;
      this.embeddedType = _ReportEmbedded.default;
    }
    /**
     * Constructs a "Report" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Report } object Optional instance to populate.
     * @return { module:model/Report } The populated "Report" instance.
     */

    _createClass(Report, null, [
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
            object = new Report();
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("priority")) {
            object.priority = _ApiClient.default.convertToType(
              data["priority"],
              "Number"
            );
          }

          if (data.hasOwnProperty("reference")) {
            object.reference = _ApiClient.default.convertToType(
              data["reference"],
              "String"
            );
          }

          if (data.hasOwnProperty("tags")) {
            object.tags = _ApiClient.default.convertToType(
              data["tags"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("identificationNumber")) {
            object.identificationNumber = _ApiClient.default.convertToType(
              data["identificationNumber"],
              "String"
            );
          }

          if (data.hasOwnProperty("state")) {
            object.state = _ApiClient.default.convertToType(
              data["state"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("_embedded")) {
            object.embedded = _ApiClient.default.convertToType(
              data["_embedded"],
              object.embeddedType
            );
          }

          return object;
        }
      }
    ]);

    return Report;
  })();

exports.default = Report;
