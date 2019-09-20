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
 * The OrganizationData model module.
 * @module model/OrganizationData
 */
var OrganizationData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OrganizationData".
   * @alias module:model/OrganizationData
   * @class
  
   * @param name { String }
  
   * @param businessActivity { String }
  
   */
    function OrganizationData(name, businessActivity) {
      _classCallCheck(this, OrganizationData);

      this.name = name;
      this.businessActivity = businessActivity;
      this.logo = null;
    }
    /**
     * Constructs a "OrganizationData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OrganizationData } object Optional instance to populate.
     * @return { module:model/OrganizationData } The populated "OrganizationData" instance.
     */

    _createClass(
      OrganizationData,
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
          key: "getBusinessActivity",
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
          /**
           * @return { String }
           */
        },
        {
          key: "getLogo",
          value: function getLogo() {
            return this.logo;
          }
          /**
           * @param { String } logo
           */
        },
        {
          key: "setLogo",
          value: function setLogo(logo) {
            this.logo = logo;
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
              object = new OrganizationData();
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("businessActivity")) {
              object.businessActivity = _ApiClient.default.convertToType(
                data["businessActivity"],
                "String"
              );
            }

            if (data.hasOwnProperty("logo")) {
              object.logo = _ApiClient.default.convertToType(
                data["logo"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return OrganizationData;
  })();

exports.default = OrganizationData;
