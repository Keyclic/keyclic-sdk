"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ErrorEmbedded = _interopRequireDefault(require("./ErrorEmbedded"));

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
 * The Error model module.
 * @module model/Error
 */
var Error =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Error".
   * @alias module:model/Error
   * @class
  
   */
    function Error() {
      _classCallCheck(this, Error);

      this.message = null;
      this.total = null;
      this.embedded = null;
      this.embeddedType = _ErrorEmbedded.default;
    }
    /**
     * Constructs a "Error" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Error } object Optional instance to populate.
     * @return { module:model/Error } The populated "Error" instance.
     */

    _createClass(
      Error,
      [
        {
          key: "getMessage",

          /**
           * @return { String }
           */
          value: function getMessage() {
            return this.message;
          }
          /**
           * @param { String } message
           */
        },
        {
          key: "setMessage",
          value: function setMessage(message) {
            this.message = message;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getTotal",
          value: function getTotal() {
            return this.total;
          }
          /**
           * @param { Number } total
           */
        },
        {
          key: "setTotal",
          value: function setTotal(total) {
            this.total = total;
          }
          /**
           * @return { module:model/ErrorEmbedded }
           */
        },
        {
          key: "getEmbedded",
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/ErrorEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
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
              object = new Error();
            }

            if (data.hasOwnProperty("message")) {
              object.message = _ApiClient.default.convertToType(
                data["message"],
                "String"
              );
            }

            if (data.hasOwnProperty("total")) {
              object.total = _ApiClient.default.convertToType(
                data["total"],
                "Number"
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
      ]
    );

    return Error;
  })();

exports.default = Error;
