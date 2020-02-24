"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _SectionLinksSelf = _interopRequireDefault(require("./SectionLinksSelf"));

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
 * The SectionLinks model module.
 * @module model/SectionLinks
 */
var SectionLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "SectionLinks".
   * @alias module:model/SectionLinks
   * @class
  
   */
    function SectionLinks() {
      _classCallCheck(this, SectionLinks);

      this.self = null;
      this.selfType = _SectionLinksSelf.default;
    }
    /**
     * Constructs a "SectionLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/SectionLinks } object Optional instance to populate.
     * @return { module:model/SectionLinks } The populated "SectionLinks" instance.
     */

    _createClass(
      SectionLinks,
      [
        {
          key: "getSelf",

          /**
           * @return { module:model/SectionLinksSelf }
           */
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/SectionLinksSelf } self
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
              object = new SectionLinks();
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

    return SectionLinks;
  })();

exports.default = SectionLinks;
