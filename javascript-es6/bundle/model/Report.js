"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportEmbedded = _interopRequireDefault(require("./ReportEmbedded"));

var _ReportLinks = _interopRequireDefault(require("./ReportLinks"));

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
 * The Report model module.
 * @module model/Report
 */
var Report =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Report".
   * @alias module:model/Report
   * @class
  
   * @param priority { Number }
  
   * @param state { Array.<String> }
  
   */
    function Report(priority, state) {
      _classCallCheck(this, Report);

      this.embedded = null;
      this.links = null;
      this.createdAt = null;
      this.description = null;
      this.dueAt = null;
      this.id = null;
      this.identificationNumber = null;
      this.priority = priority;
      this.reference = null;
      this.state = state;
      this.tags = [];
      this.type = null;
      this.updatedAt = null;
      this.embeddedType = _ReportEmbedded.default;
      this.linksType = _ReportLinks.default;
    }
    /**
     * Constructs a "Report" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Report } object Optional instance to populate.
     * @return { module:model/Report } The populated "Report" instance.
     */

    _createClass(
      Report,
      [
        {
          key: "getEmbedded",

          /**
           * @return { module:model/ReportEmbedded }
           */
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/ReportEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
          }
          /**
           * @return { module:model/ReportLinks }
           */
        },
        {
          key: "getLinks",
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/ReportLinks } links
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
           * @return { Date }
           */
        },
        {
          key: "getDueAt",
          value: function getDueAt() {
            return this.dueAt;
          }
          /**
           * @param { Date } dueAt
           */
        },
        {
          key: "setDueAt",
          value: function setDueAt(dueAt) {
            this.dueAt = dueAt;
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
          key: "getIdentificationNumber",
          value: function getIdentificationNumber() {
            return this.identificationNumber;
          }
          /**
           * @param { String } identificationNumber
           */
        },
        {
          key: "setIdentificationNumber",
          value: function setIdentificationNumber(identificationNumber) {
            this.identificationNumber = identificationNumber;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getPriority",
          value: function getPriority() {
            return this.priority;
          }
          /**
           * @param { Number } priority
           */
        },
        {
          key: "setPriority",
          value: function setPriority(priority) {
            this.priority = priority;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getReference",
          value: function getReference() {
            return this.reference;
          }
          /**
           * @param { String } reference
           */
        },
        {
          key: "setReference",
          value: function setReference(reference) {
            this.reference = reference;
          }
          /**
           * @return { Array.<String> }
           */
        },
        {
          key: "getState",
          value: function getState() {
            return this.state;
          }
          /**
           * @param { Array.<String> } state
           */
        },
        {
          key: "setState",
          value: function setState(state) {
            this.state = state;
          }
          /**
           * @return { Array.<String> }
           */
        },
        {
          key: "getTags",
          value: function getTags() {
            return this.tags;
          }
          /**
           * @param { Array.<String> } tags
           */
        },
        {
          key: "setTags",
          value: function setTags(tags) {
            this.tags = tags;
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
              object = new Report();
            }

            if (data.hasOwnProperty("_embedded")) {
              object.embedded = _ApiClient.default.convertToType(
                data["_embedded"],
                object.embeddedType
              );
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

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("dueAt")) {
              object.dueAt = _ApiClient.default.convertToType(
                data["dueAt"],
                "Date"
              );
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("identificationNumber")) {
              object.identificationNumber = _ApiClient.default.convertToType(
                data["identificationNumber"],
                "String"
              );
            }

            if (data.hasOwnProperty("priority")) {
              object.priority = _ApiClient.default.convertToType(
                data["priority"],
                "Number"
              );
            }

            if (data.hasOwnProperty("reference")) {
              object.reference = _ApiClient.default.convertToType(
                data["reference"],
                "String"
              );
            }

            if (data.hasOwnProperty("state")) {
              object.state = _ApiClient.default.convertToType(
                data["state"],
                "['String']"
              );
            }

            if (data.hasOwnProperty("tags")) {
              object.tags = _ApiClient.default.convertToType(
                data["tags"],
                "['String']"
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

    return Report;
  })();

exports.default = Report;
