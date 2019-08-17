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
 * The Choice model module.
 * @module model/Choice
 */
var Choice =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Choice".
   * @alias module:model/Choice
   * @class
  
   */
    function Choice() {
      _classCallCheck(this, Choice);

      this._default = null;
      this.description = null;
      this._enum = [];
      this.format = null;
      this.id = null;
      this.maxItems = null;
      this.minItems = null;
      this.propertyOrder = null;
      this.title = null;
      this.type = null;
    }
    /**
     * Constructs a "Choice" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Choice } object Optional instance to populate.
     * @return { module:model/Choice } The populated "Choice" instance.
     */

    _createClass(Choice, null, [
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
            object = new Choice();
          }

          if (data.hasOwnProperty("default")) {
            object._default = _ApiClient.default.convertToType(
              data["default"],
              "String"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("enum")) {
            object._enum = _ApiClient.default.convertToType(
              data["enum"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("format")) {
            object.format = _ApiClient.default.convertToType(
              data["format"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("maxItems")) {
            object.maxItems = _ApiClient.default.convertToType(
              data["maxItems"],
              "Number"
            );
          }

          if (data.hasOwnProperty("minItems")) {
            object.minItems = _ApiClient.default.convertToType(
              data["minItems"],
              "Number"
            );
          }

          if (data.hasOwnProperty("propertyOrder")) {
            object.propertyOrder = _ApiClient.default.convertToType(
              data["propertyOrder"],
              "Number"
            );
          }

          if (data.hasOwnProperty("title")) {
            object.title = _ApiClient.default.convertToType(
              data["title"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return Choice;
  })();

exports.default = Choice;
