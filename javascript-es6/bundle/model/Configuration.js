"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ConfigurationDelegationType = _interopRequireDefault(
  require("./ConfigurationDelegationType")
);

var _ConfigurationLinks = _interopRequireDefault(
  require("./ConfigurationLinks")
);

var _ConfigurationMemberType = _interopRequireDefault(
  require("./ConfigurationMemberType")
);

var _ConfigurationOperationType = _interopRequireDefault(
  require("./ConfigurationOperationType")
);

var _ConfigurationReportType = _interopRequireDefault(
  require("./ConfigurationReportType")
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
 * The Configuration model module.
 * @module model/Configuration
 */
var Configuration =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Configuration".
   * @alias module:model/Configuration
   * @class
  
   */
    function Configuration() {
      _classCallCheck(this, Configuration);

      this.links = null;
      this.createdAt = null;
      this.delegationType = null;
      this.description = null;
      this.id = null;
      this.memberType = null;
      this.name = null;
      this.operationType = null;
      this.reportType = null;
      this.type = null;
      this.updatedAt = null;
      this.linksType = _ConfigurationLinks.default;
      this.delegationTypeType = _ConfigurationDelegationType.default;
      this.memberTypeType = _ConfigurationMemberType.default;
      this.operationTypeType = _ConfigurationOperationType.default;
      this.reportTypeType = _ConfigurationReportType.default;
    }
    /**
     * Constructs a "Configuration" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Configuration } object Optional instance to populate.
     * @return { module:model/Configuration } The populated "Configuration" instance.
     */

    _createClass(
      Configuration,
      [
        {
          key: "getLinks",

          /**
           * @return { module:model/ConfigurationLinks }
           */
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/ConfigurationLinks } links
           */
        },
        {
          key: "setLinks",
          value: function setLinks(links) {
            this.links = links;
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
           * @return { module:model/ConfigurationDelegationType }
           */
        },
        {
          key: "getDelegationType",
          value: function getDelegationType() {
            return this.delegationType;
          }
          /**
           * @param { module:model/ConfigurationDelegationType } delegationType
           */
        },
        {
          key: "setDelegationType",
          value: function setDelegationType(delegationType) {
            this.delegationType = delegationType;
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
           * @return { module:model/ConfigurationMemberType }
           */
        },
        {
          key: "getMemberType",
          value: function getMemberType() {
            return this.memberType;
          }
          /**
           * @param { module:model/ConfigurationMemberType } memberType
           */
        },
        {
          key: "setMemberType",
          value: function setMemberType(memberType) {
            this.memberType = memberType;
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
           * @return { module:model/ConfigurationOperationType }
           */
        },
        {
          key: "getOperationType",
          value: function getOperationType() {
            return this.operationType;
          }
          /**
           * @param { module:model/ConfigurationOperationType } operationType
           */
        },
        {
          key: "setOperationType",
          value: function setOperationType(operationType) {
            this.operationType = operationType;
          }
          /**
           * @return { module:model/ConfigurationReportType }
           */
        },
        {
          key: "getReportType",
          value: function getReportType() {
            return this.reportType;
          }
          /**
           * @param { module:model/ConfigurationReportType } reportType
           */
        },
        {
          key: "setReportType",
          value: function setReportType(reportType) {
            this.reportType = reportType;
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
              object = new Configuration();
            }

            if (data.hasOwnProperty("_links")) {
              object.links = _ApiClient.default.convertToType(
                data["_links"],
                object.linksType
              );
            }

            if (data.hasOwnProperty("createdAt")) {
              object.createdAt = _ApiClient.default.convertToType(
                data["createdAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("delegationType")) {
              object.delegationType = _ApiClient.default.convertToType(
                data["delegationType"],
                object.delegationTypeType
              );
            }

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("memberType")) {
              object.memberType = _ApiClient.default.convertToType(
                data["memberType"],
                object.memberTypeType
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("operationType")) {
              object.operationType = _ApiClient.default.convertToType(
                data["operationType"],
                object.operationTypeType
              );
            }

            if (data.hasOwnProperty("reportType")) {
              object.reportType = _ApiClient.default.convertToType(
                data["reportType"],
                object.reportTypeType
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

    return Configuration;
  })();

exports.default = Configuration;
