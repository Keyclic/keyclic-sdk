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
 * The BusinessActivityLinksImageIriTemplateMapping model module.
 * @module model/BusinessActivityLinksImageIriTemplateMapping
 */
var BusinessActivityLinksImageIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "BusinessActivityLinksImageIriTemplateMapping".
   * @alias module:model/BusinessActivityLinksImageIriTemplateMapping
   * @class
  
   */
    function BusinessActivityLinksImageIriTemplateMapping() {
      _classCallCheck(this, BusinessActivityLinksImageIriTemplateMapping);

      this.businessActivity = null;
    }
    /**
     * Constructs a "BusinessActivityLinksImageIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/BusinessActivityLinksImageIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/BusinessActivityLinksImageIriTemplateMapping } The populated "BusinessActivityLinksImageIriTemplateMapping" instance.
     */

    _createClass(
      BusinessActivityLinksImageIriTemplateMapping,
      [
        {
          key: "getBusinessActivity",

          /**
           * @return { String }
           */
          value: function getBusinessActivity() {
            return this.businessActivity;
          }
          /**
           * @param { String } businessActivity
           */
        },
        {
          key: "setBusinessActivity",
          value: function setBusinessActivity(businessActivity) {
            this.businessActivity = businessActivity;
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
              object = new BusinessActivityLinksImageIriTemplateMapping();
            }

            if (data.hasOwnProperty("businessActivity")) {
              object.businessActivity = _ApiClient.default.convertToType(
                data["businessActivity"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return BusinessActivityLinksImageIriTemplateMapping;
  })();

exports.default = BusinessActivityLinksImageIriTemplateMapping;
