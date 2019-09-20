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
 * The PlaceData model module.
 * @module model/PlaceData
 */
var PlaceData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "PlaceData".
   * @alias module:model/PlaceData
   * @class
  
   * @param name { String }
  
   * @param polygon { String }
  
   * @param organization { String }
  
   */
    function PlaceData(name, polygon, organization) {
      _classCallCheck(this, PlaceData);

      this.name = name;
      this.branchCode = null;
      this.polygon = polygon;
      this.organization = organization;
    }
    /**
     * Constructs a "PlaceData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/PlaceData } object Optional instance to populate.
     * @return { module:model/PlaceData } The populated "PlaceData" instance.
     */

    _createClass(
      PlaceData,
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
          key: "getBranchCode",
          value: function getBranchCode() {
            return this.branchCode;
          }
          /**
           * @param { String } branchCode
           */
        },
        {
          key: "setBranchCode",
          value: function setBranchCode(branchCode) {
            this.branchCode = branchCode;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getPolygon",
          value: function getPolygon() {
            return this.polygon;
          }
          /**
           * @param { String } polygon
           */
        },
        {
          key: "setPolygon",
          value: function setPolygon(polygon) {
            this.polygon = polygon;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getOrganization",
          value: function getOrganization() {
            return this.organization;
          }
          /**
           * @param { String } organization
           */
        },
        {
          key: "setOrganization",
          value: function setOrganization(organization) {
            this.organization = organization;
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
              object = new PlaceData();
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("branchCode")) {
              object.branchCode = _ApiClient.default.convertToType(
                data["branchCode"],
                "String"
              );
            }

            if (data.hasOwnProperty("polygon")) {
              object.polygon = _ApiClient.default.convertToType(
                data["polygon"],
                "String"
              );
            }

            if (data.hasOwnProperty("organization")) {
              object.organization = _ApiClient.default.convertToType(
                data["organization"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return PlaceData;
  })();

exports.default = PlaceData;
