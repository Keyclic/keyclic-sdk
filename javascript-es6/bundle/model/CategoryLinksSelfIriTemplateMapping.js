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
 * The CategoryLinksSelfIriTemplateMapping model module.
 * @module model/CategoryLinksSelfIriTemplateMapping
 */
var CategoryLinksSelfIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "CategoryLinksSelfIriTemplateMapping".
   * @alias module:model/CategoryLinksSelfIriTemplateMapping
   * @class
  
   */
    function CategoryLinksSelfIriTemplateMapping() {
      _classCallCheck(this, CategoryLinksSelfIriTemplateMapping);

      this.category = null;
    }
    /**
     * Constructs a "CategoryLinksSelfIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/CategoryLinksSelfIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/CategoryLinksSelfIriTemplateMapping } The populated "CategoryLinksSelfIriTemplateMapping" instance.
     */

    _createClass(
      CategoryLinksSelfIriTemplateMapping,
      [
        {
          key: "getCategory",

          /**
           * @return { String }
           */
          value: function getCategory() {
            return this.category;
          }
          /**
           * @param { String } category
           */
        },
        {
          key: "setCategory",
          value: function setCategory(category) {
            this.category = category;
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
              object = new CategoryLinksSelfIriTemplateMapping();
            }

            if (data.hasOwnProperty("category")) {
              object.category = _ApiClient.default.convertToType(
                data["category"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return CategoryLinksSelfIriTemplateMapping;
  })();

exports.default = CategoryLinksSelfIriTemplateMapping;
