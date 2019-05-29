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
 * The OccupantLinksSelfIriTemplateMapping model module.
 * @module model/OccupantLinksSelfIriTemplateMapping
 */
var OccupantLinksSelfIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantLinksSelfIriTemplateMapping".
   * @alias module:model/OccupantLinksSelfIriTemplateMapping
   * @class
  
   */
    function OccupantLinksSelfIriTemplateMapping() {
      _classCallCheck(this, OccupantLinksSelfIriTemplateMapping);

      this.place = null;
      this.occupant = null;
    }
    /**
     * Constructs a "OccupantLinksSelfIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantLinksSelfIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/OccupantLinksSelfIriTemplateMapping } The populated "OccupantLinksSelfIriTemplateMapping" instance.
     */

    _createClass(OccupantLinksSelfIriTemplateMapping, null, [
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
            object = new OccupantLinksSelfIriTemplateMapping();
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              "String"
            );
          }

          if (data.hasOwnProperty("occupant")) {
            object.occupant = _ApiClient.default.convertToType(
              data["occupant"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return OccupantLinksSelfIriTemplateMapping;
  })();

exports.default = OccupantLinksSelfIriTemplateMapping;
