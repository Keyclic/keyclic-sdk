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
 * The PaginationLink model module.
 * @module model/PaginationLink
 */
var PaginationLink = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PaginationLink".
     * @alias module:model/PaginationLink
     * @class
    
     */
  function PaginationLink() {
    _classCallCheck(this, PaginationLink);

    this.href = null;
  }
  /**
   * Constructs a "PaginationLink" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PaginationLink } object Optional instance to populate.
   * @return { module:model/PaginationLink } The populated "PaginationLink" instance.
   */

  _createClass(
    PaginationLink,
    [
      {
        key: "getHref",

        /**
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * @param { String } href
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
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
            object = new PaginationLink();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return PaginationLink;
})();

exports.default = PaginationLink;
