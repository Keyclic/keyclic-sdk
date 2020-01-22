"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CategoryLinks = _interopRequireDefault(require("./CategoryLinks"));

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
 * The ReportCategory model module.
 * @module model/ReportCategory
 */
var ReportCategory =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportCategory".
   * @alias module:model/ReportCategory
   * @class
  
   */
    function ReportCategory() {
      _classCallCheck(this, ReportCategory);

      this.name = null;
      this.type = null;
      this.links = null;
      this.linksType = _CategoryLinks.default;
    }
    /**
     * Constructs a "ReportCategory" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportCategory } object Optional instance to populate.
     * @return { module:model/ReportCategory } The populated "ReportCategory" instance.
     */

    _createClass(
      ReportCategory,
      [
        {
          key: "getName",

          /**
           * @return { String }
           */
          value: function getName() {
            return this.name;
          }
          /**
           * @param { String } name
           */
        },
        {
          key: "setName",
          value: function setName(name) {
            this.name = name;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getType",
          value: function getType() {
            return this.type;
          }
          /**
           * @return { module:model/CategoryLinks }
           */
        },
        {
          key: "getLinks",
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/CategoryLinks } links
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
              object = new ReportCategory();
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

    return ReportCategory;
  })();

exports.default = ReportCategory;
