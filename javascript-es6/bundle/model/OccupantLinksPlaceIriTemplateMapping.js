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
 * The OccupantLinksPlaceIriTemplateMapping model module.
 * @module model/OccupantLinksPlaceIriTemplateMapping
 */
var OccupantLinksPlaceIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantLinksPlaceIriTemplateMapping".
   * @alias module:model/OccupantLinksPlaceIriTemplateMapping
   * @class
  
   */
    function OccupantLinksPlaceIriTemplateMapping() {
      _classCallCheck(this, OccupantLinksPlaceIriTemplateMapping);

      this.place = null;
    }
    /**
     * Constructs a "OccupantLinksPlaceIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantLinksPlaceIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/OccupantLinksPlaceIriTemplateMapping } The populated "OccupantLinksPlaceIriTemplateMapping" instance.
     */

    _createClass(OccupantLinksPlaceIriTemplateMapping, null, [
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
            object = new OccupantLinksPlaceIriTemplateMapping();
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return OccupantLinksPlaceIriTemplateMapping;
  })();

exports.default = OccupantLinksPlaceIriTemplateMapping;