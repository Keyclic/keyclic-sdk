"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _NodeEmbedded = _interopRequireDefault(require("./NodeEmbedded"));

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
 * The Node model module.
 * @module model/Node
 */
var Node =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Node".
   * @alias module:model/Node
   * @class
  
   */
    function Node() {
      _classCallCheck(this, Node);

      this.id = null;
      this.type = null;
      this.name = null;
      this.embedded = null;
      this.embeddedType = _NodeEmbedded.default;
    }
    /**
     * Constructs a "Node" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Node } object Optional instance to populate.
     * @return { module:model/Node } The populated "Node" instance.
     */

    _createClass(
      Node,
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
          key: "getType",
          value: function getType() {
            return this.type;
          }
          /**
           * @param { String } type
           */
        },
        {
          key: "setType",
          value: function setType(type) {
            this.type = type;
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
           * @return { module:model/NodeEmbedded }
           */
        },
        {
          key: "getEmbedded",
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/NodeEmbedded } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
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
              object = new Node();
            }

            if (data.hasOwnProperty("id")) {
              object.id = _ApiClient.default.convertToType(
                data["id"],
                "String"
              );
            }

            if (data.hasOwnProperty("type")) {
              object.type = _ApiClient.default.convertToType(
                data["type"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            if (data.hasOwnProperty("_embedded")) {
              object.embedded = _ApiClient.default.convertToType(
                data["_embedded"],
                object.embeddedType
              );
            }

            return object;
          }
        }
      ]
    );

    return Node;
  })();

exports.default = Node;
