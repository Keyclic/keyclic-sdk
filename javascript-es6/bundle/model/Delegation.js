"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationEmbedded = _interopRequireDefault(
  require("./DelegationEmbedded")
);

var _DelegationLinks = _interopRequireDefault(require("./DelegationLinks"));

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
 * The Delegation model module.
 * @module model/Delegation
 */
var Delegation =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Delegation".
   * @alias module:model/Delegation
   * @class
  
   * @param state { Array.<String> }
  
   */
    function Delegation(state) {
      _classCallCheck(this, Delegation);

      this.embedded = null;
      this.links = null;
      this.createdAt = null;
      this.description = null;
      this.id = null;
      this.state = state;
      this.type = null;
      this.updatedAt = null;
      this.embeddedType = _DelegationEmbedded.default;
      this.linksType = _DelegationLinks.default;
    }
    /**
     * Constructs a "Delegation" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Delegation } object Optional instance to populate.
     * @return { module:model/Delegation } The populated "Delegation" instance.
     */

    _createClass(
      Delegation,
      [
        {
          key: "getEmbedded",

          /**
           * @return { module:model/DelegationEmbedded }
           */
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/DelegationEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
          }
          /**
           * @return { module:model/DelegationLinks }
           */
        },
        {
          key: "getLinks",
          value: function getLinks() {
            return this.links;
          }
          /**
           * @param { module:model/DelegationLinks } links
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
           * @return { String }
           */
        },
        {
          key: "getId",
          value: function getId() {
            return this.id;
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
              object = new Delegation();
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

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("state")) {
              object.state = _ApiClient.default.convertToType(
                data["state"],
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

    return Delegation;
  })();

exports.default = Delegation;
