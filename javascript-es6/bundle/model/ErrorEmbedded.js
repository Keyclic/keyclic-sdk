"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Error = _interopRequireDefault(require("./Error"));

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
 * The ErrorEmbedded model module.
 * @module model/ErrorEmbedded
 */
var ErrorEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ErrorEmbedded".
   * @alias module:model/ErrorEmbedded
   * @class
  
   */
  function ErrorEmbedded() {
    _classCallCheck(this, ErrorEmbedded);

    this.errors = [];
    this.errorsType = _Error.default;
  }
  /**
   * Constructs a "ErrorEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ErrorEmbedded } object Optional instance to populate.
   * @return { module:model/ErrorEmbedded } The populated "ErrorEmbedded" instance.
   */

  _createClass(
    ErrorEmbedded,
    [
      {
        key: "getErrors",

        /**
         * @return { Array.<module:model/Error> }
         */
        value: function getErrors() {
          return this.errors;
        }
        /**
         * @param { Array.<module:model/Error> } errors
         */
      },
      {
        key: "setErrors",
        value: function setErrors(errors) {
          this.errors = errors;
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
            throw new _Error.default("No data to build object");
          }

          if (object === null) {
            object = new ErrorEmbedded();
          }

          if (data.hasOwnProperty("errors")) {
            object.errors = _ApiClient.default.convertToType(data["errors"], [
              object.errorsType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return ErrorEmbedded;
})();

exports.default = ErrorEmbedded;
