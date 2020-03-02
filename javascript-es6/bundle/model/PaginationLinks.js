"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PaginationLink = _interopRequireDefault(require("./PaginationLink"));

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
 * The PaginationLinks model module.
 * @module model/PaginationLinks
 */
var PaginationLinks = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PaginationLinks".
     * @alias module:model/PaginationLinks
     * @class
    
     */
  function PaginationLinks() {
    _classCallCheck(this, PaginationLinks);

    this.first = null;
    this.last = null;
    this.next = null;
    this.self = null;
    this.firstType = _PaginationLink.default;
    this.lastType = _PaginationLink.default;
    this.nextType = _PaginationLink.default;
    this.selfType = _PaginationLink.default;
  }
  /**
   * Constructs a "PaginationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PaginationLinks } object Optional instance to populate.
   * @return { module:model/PaginationLinks } The populated "PaginationLinks" instance.
   */

  _createClass(
    PaginationLinks,
    [
      {
        key: "getFirst",

        /**
         * @return { module:model/PaginationLink }
         */
        value: function getFirst() {
          return this.first;
        }
        /**
         * @param { module:model/PaginationLink } first
         */
      },
      {
        key: "setFirst",
        value: function setFirst(first) {
          this.first = first;
        }
        /**
         * @return { module:model/PaginationLink }
         */
      },
      {
        key: "getLast",
        value: function getLast() {
          return this.last;
        }
        /**
         * @param { module:model/PaginationLink } last
         */
      },
      {
        key: "setLast",
        value: function setLast(last) {
          this.last = last;
        }
        /**
         * @return { module:model/PaginationLink }
         */
      },
      {
        key: "getNext",
        value: function getNext() {
          return this.next;
        }
        /**
         * @param { module:model/PaginationLink } next
         */
      },
      {
        key: "setNext",
        value: function setNext(next) {
          this.next = next;
        }
        /**
         * @return { module:model/PaginationLink }
         */
      },
      {
        key: "getSelf",
        value: function getSelf() {
          return this.self;
        }
        /**
         * @param { module:model/PaginationLink } self
         */
      },
      {
        key: "setSelf",
        value: function setSelf(self) {
          this.self = self;
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
            object = new PaginationLinks();
          }

          if (data.hasOwnProperty("first")) {
            object.first = _ApiClient.default.convertToType(
              data["first"],
              object.firstType
            );
          }

          if (data.hasOwnProperty("last")) {
            object.last = _ApiClient.default.convertToType(
              data["last"],
              object.lastType
            );
          }

          if (data.hasOwnProperty("next")) {
            object.next = _ApiClient.default.convertToType(
              data["next"],
              object.nextType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          return object;
        }
      }
    ]
  );

  return PaginationLinks;
})();

exports.default = PaginationLinks;
