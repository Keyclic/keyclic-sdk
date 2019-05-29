"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _OccupantLinksPlaceIriTemplate = _interopRequireDefault(
  require("./OccupantLinksPlaceIriTemplate")
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
 * The OccupantLinksPlace model module.
 * @module model/OccupantLinksPlace
 */
var OccupantLinksPlace =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OccupantLinksPlace".
   * @alias module:model/OccupantLinksPlace
   * @class
  
   */
    function OccupantLinksPlace() {
      _classCallCheck(this, OccupantLinksPlace);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _OccupantLinksPlaceIriTemplate.default;
    }
    /**
     * Constructs a "OccupantLinksPlace" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OccupantLinksPlace } object Optional instance to populate.
     * @return { module:model/OccupantLinksPlace } The populated "OccupantLinksPlace" instance.
     */

    _createClass(OccupantLinksPlace, null, [
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
            object = new OccupantLinksPlace();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]);

    return OccupantLinksPlace;
  })();

exports.default = OccupantLinksPlace;
