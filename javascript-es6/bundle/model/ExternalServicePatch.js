"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ExternalServicePatchContactPoint = _interopRequireDefault(
  require("./ExternalServicePatchContactPoint")
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
 * The ExternalServicePatch model module.
 * @module model/ExternalServicePatch
 */
var ExternalServicePatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ExternalServicePatch".
   * @alias module:model/ExternalServicePatch
   * @class
  
   */
    function ExternalServicePatch() {
      _classCallCheck(this, ExternalServicePatch);

      this.contactPoint = null;
      this.description = null;
      this.name = null;
      this.contactPointType = _ExternalServicePatchContactPoint.default;
    }
    /**
     * Constructs a "ExternalServicePatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ExternalServicePatch } object Optional instance to populate.
     * @return { module:model/ExternalServicePatch } The populated "ExternalServicePatch" instance.
     */

    _createClass(
      ExternalServicePatch,
      [
        {
          key: "getContactPoint",

          /**
           * @return { module:model/ExternalServicePatchContactPoint }
           */
          value: function getContactPoint() {
            return this.contactPoint;
          }
          /**
           * @param { module:model/ExternalServicePatchContactPoint } contactPoint
           */
        },
        {
          key: "setContactPoint",
          value: function setContactPoint(contactPoint) {
            this.contactPoint = contactPoint;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getDescription",
          value: function getDescription() {
            return this.description;
          }
          /**
           * @param { String } description
           */
        },
        {
          key: "setDescription",
          value: function setDescription(description) {
            this.description = description;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getName",
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
              object = new ExternalServicePatch();
            }

            if (data.hasOwnProperty("contactPoint")) {
              object.contactPoint = _ApiClient.default.convertToType(
                data["contactPoint"],
                object.contactPointType
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ExternalServicePatch;
  })();

exports.default = ExternalServicePatch;
