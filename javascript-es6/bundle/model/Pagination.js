"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _PaginationLinks = _interopRequireDefault(require("./PaginationLinks"));

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
 * The Pagination model module.
 * @module model/Pagination
 */
var Pagination = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Pagination".
   * @alias module:model/Pagination
   * @class
  
   */
  function Pagination() {
    _classCallCheck(this, Pagination);

    this.limit = null;
    this.page = null;
    this.pages = null;
    this.total = null;
    this.links = null;
    this.linksType = _PaginationLinks.default;
  }
  /**
   * Constructs a "Pagination" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Pagination } object Optional instance to populate.
   * @return { module:model/Pagination } The populated "Pagination" instance.
   */

  _createClass(
    Pagination,
    [
      {
        key: "getLimit",

        /**
         * @return { Number }
         */
        value: function getLimit() {
          return this.limit;
        }
        /**
         * @param { Number } limit
         */
      },
      {
        key: "setLimit",
        value: function setLimit(limit) {
          this.limit = limit;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getPage",
        value: function getPage() {
          return this.page;
        }
        /**
         * @param { Number } page
         */
      },
      {
        key: "setPage",
        value: function setPage(page) {
          this.page = page;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getPages",
        value: function getPages() {
          return this.pages;
        }
        /**
         * @param { Number } pages
         */
      },
      {
        key: "setPages",
        value: function setPages(pages) {
          this.pages = pages;
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
         * @return { module:model/PaginationLinks }
         */
      },
      {
        key: "getLinks",
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/PaginationLinks } links
         */
      },
      {
        key: "setLinks",
        value: function setLinks(links) {
          this.links = links;
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
            object = new Pagination();
          }

          if (data.hasOwnProperty("limit")) {
            object.limit = _ApiClient.default.convertToType(
              data["limit"],
              "Number"
            );
          }

          if (data.hasOwnProperty("page")) {
            object.page = _ApiClient.default.convertToType(
              data["page"],
              "Number"
            );
          }

          if (data.hasOwnProperty("pages")) {
            object.pages = _ApiClient.default.convertToType(
              data["pages"],
              "Number"
            );
          }

          if (data.hasOwnProperty("total")) {
            object.total = _ApiClient.default.convertToType(
              data["total"],
              "Number"
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          return object;
        }
      }
    ]
  );

  return Pagination;
})();

exports.default = Pagination;
