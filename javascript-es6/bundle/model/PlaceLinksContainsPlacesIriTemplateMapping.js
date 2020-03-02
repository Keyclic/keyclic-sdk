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
 * The PlaceLinksContainsPlacesIriTemplateMapping model module.
 * @module model/PlaceLinksContainsPlacesIriTemplateMapping
 */
var PlaceLinksContainsPlacesIriTemplateMapping = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PlaceLinksContainsPlacesIriTemplateMapping".
     * @alias module:model/PlaceLinksContainsPlacesIriTemplateMapping
     * @class
    
     */
  function PlaceLinksContainsPlacesIriTemplateMapping() {
    _classCallCheck(this, PlaceLinksContainsPlacesIriTemplateMapping);

    this.parent = null;
  }
  /**
   * Constructs a "PlaceLinksContainsPlacesIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceLinksContainsPlacesIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/PlaceLinksContainsPlacesIriTemplateMapping } The populated "PlaceLinksContainsPlacesIriTemplateMapping" instance.
   */

  _createClass(
    PlaceLinksContainsPlacesIriTemplateMapping,
    [
      {
        key: "getParent",

        /**
         * @return { String }
         */
        value: function getParent() {
          return this.parent;
        }
        /**
         * @param { String } parent
         */
      },
      {
        key: "setParent",
        value: function setParent(parent) {
          this.parent = parent;
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
            object = new PlaceLinksContainsPlacesIriTemplateMapping();
          }

          if (data.hasOwnProperty("parent")) {
            object.parent = _ApiClient.default.convertToType(
              data["parent"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return PlaceLinksContainsPlacesIriTemplateMapping;
})();

exports.default = PlaceLinksContainsPlacesIriTemplateMapping;
