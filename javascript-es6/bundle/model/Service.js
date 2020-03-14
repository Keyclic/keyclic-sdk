"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ServiceContactPoint = _interopRequireDefault(
  require("./ServiceContactPoint")
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
 * The Service model module.
 * @module model/Service
 */
var Service = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Service".
   * @alias module:model/Service
   * @class
  
   * @param name { String }
  
   */
  function Service(name) {
    _classCallCheck(this, Service);

    this.contactPoint = null;
    this.createdAt = null;
    this.description = null;
    this.id = null;
    this.name = name;
    this.type = null;
    this.updatedAt = null;
    this.contactPointType = _ServiceContactPoint.default;
  }
  /**
   * Constructs a "Service" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Service } object Optional instance to populate.
   * @return { module:model/Service } The populated "Service" instance.
   */

  _createClass(
    Service,
    [
      {
        key: "getContactPoint",

        /**
         * @return { module:model/ServiceContactPoint }
         */
        value: function getContactPoint() {
          return this.contactPoint;
        }
        /**
         * @param { module:model/ServiceContactPoint } contactPoint
         */
      },
      {
        key: "setContactPoint",
        value: function setContactPoint(contactPoint) {
          this.contactPoint = contactPoint;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getCreatedAt",
        value: function getCreatedAt() {
          return this.createdAt;
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
        key: "getId",
        value: function getId() {
          return this.id;
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
        /**
         * @return { String }
         */
      },
      {
        key: "getType",
        value: function getType() {
          return this.type;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getUpdatedAt",
        value: function getUpdatedAt() {
          return this.updatedAt;
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
            object = new Service();
          }

          if (data.hasOwnProperty("contactPoint")) {
            object.contactPoint = _ApiClient.default.convertToType(
              data["contactPoint"],
              object.contactPointType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("name")) {
            object.name = _ApiClient.default.convertToType(
              data["name"],
              "String"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          if (data.hasOwnProperty("updatedAt")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updatedAt"],
              "Date"
            );
          }

          return object;
        }
      }
    ]
  );

  return Service;
})();

exports.default = Service;
