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
 * The ReportEmbeddedTargetGroups model module.
 * @module model/ReportEmbeddedTargetGroups
 */
var ReportEmbeddedTargetGroups =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReportEmbeddedTargetGroups".
   * @alias module:model/ReportEmbeddedTargetGroups
   * @class
  
   */
    function ReportEmbeddedTargetGroups() {
      _classCallCheck(this, ReportEmbeddedTargetGroups);

      this.id = null;
      this.name = null;
      this.description = null;
    }
    /**
     * Constructs a "ReportEmbeddedTargetGroups" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReportEmbeddedTargetGroups } object Optional instance to populate.
     * @return { module:model/ReportEmbeddedTargetGroups } The populated "ReportEmbeddedTargetGroups" instance.
     */

    _createClass(
      ReportEmbeddedTargetGroups,
      [
        {
          key: "getId",

          /**
           * @return { String }
           */
          value: function getId() {
            return this.id;
          }
          /**
           * @param { String } id
           */
        },
        {
          key: "setId",
          value: function setId(id) {
            this.id = id;
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
              object = new ReportEmbeddedTargetGroups();
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ReportEmbeddedTargetGroups;
  })();

exports.default = ReportEmbeddedTargetGroups;
