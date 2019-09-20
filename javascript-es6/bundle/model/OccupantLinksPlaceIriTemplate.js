"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OccupantLinksPlaceIriTemplateMapping = _interopRequireDefault(
  require("./OccupantLinksPlaceIriTemplateMapping")
);

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
 * The OccupantLinksPlaceIriTemplate model module.
 * @module model/OccupantLinksPlaceIriTemplate
 */
var OccupantLinksPlaceIriTemplate =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantLinksPlaceIriTemplate".
   * @alias module:model/OccupantLinksPlaceIriTemplate
   * @class
  
   */
    function OccupantLinksPlaceIriTemplate() {
      _classCallCheck(this, OccupantLinksPlaceIriTemplate);

      this.mapping = null;
      this.mappingType = _OccupantLinksPlaceIriTemplateMapping.default;
    }
    /**
     * Constructs a "OccupantLinksPlaceIriTemplate" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantLinksPlaceIriTemplate } object Optional instance to populate.
     * @return { module:model/OccupantLinksPlaceIriTemplate } The populated "OccupantLinksPlaceIriTemplate" instance.
     */

    _createClass(
      OccupantLinksPlaceIriTemplate,
      [
        {
          key: "getMapping",

          /**
           * @return { module:model/OccupantLinksPlaceIriTemplateMapping }
           */
          value: function getMapping() {
            return this.mapping;
          }
          /**
           * @param { module:model/OccupantLinksPlaceIriTemplateMapping } mapping
           */
        },
        {
          key: "setMapping",
          value: function setMapping(mapping) {
            this.mapping = mapping;
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
              object = new OccupantLinksPlaceIriTemplate();
            }

            if (data.hasOwnProperty("mapping")) {
              object.mapping = _ApiClient.default.convertToType(
                data["mapping"],
                object.mappingType
              );
            }

            return object;
          }
        }
      ]
    );

    return OccupantLinksPlaceIriTemplate;
  })();

exports.default = OccupantLinksPlaceIriTemplate;
