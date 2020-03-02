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
 * The CommentData model module.
 * @module model/CommentData
 */
var CommentData = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "CommentData".
     * @alias module:model/CommentData
     * @class
    
     * @param text { String }
    
     */
  function CommentData(text) {
    _classCallCheck(this, CommentData);

    this.text = text;
  }
  /**
   * Constructs a "CommentData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CommentData } object Optional instance to populate.
   * @return { module:model/CommentData } The populated "CommentData" instance.
   */

  _createClass(
    CommentData,
    [
      {
        key: "getText",

        /**
         * @return { String }
         */
        value: function getText() {
          return this.text;
        }
        /**
         * @param { String } text
         */
      },
      {
        key: "setText",
        value: function setText(text) {
          this.text = text;
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
            object = new CommentData();
          }

          if (data.hasOwnProperty("text")) {
            object.text = _ApiClient.default.convertToType(
              data["text"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return CommentData;
})();

exports.default = CommentData;
