"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Node = _interopRequireDefault(require("./Node"));

var _NodePath = _interopRequireDefault(require("./NodePath"));

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
 * The NodeEmbedded model module.
 * @module model/NodeEmbedded
 */
var NodeEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "NodeEmbedded".
   * @alias module:model/NodeEmbedded
   * @class
  
   */
  function NodeEmbedded() {
    _classCallCheck(this, NodeEmbedded);

    this.path = [];
    this.children = [];
    this.pathType = _NodePath.default;
    this.childrenType = _Node.default;
  }
  /**
   * Constructs a "NodeEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/NodeEmbedded } object Optional instance to populate.
   * @return { module:model/NodeEmbedded } The populated "NodeEmbedded" instance.
   */

  _createClass(
    NodeEmbedded,
    [
      {
        key: "getPath",

        /**
         * @return { Array.<module:model/NodePath> }
         */
        value: function getPath() {
          return this.path;
        }
        /**
         * @param { Array.<module:model/NodePath> } path
         */
      },
      {
        key: "setPath",
        value: function setPath(path) {
          this.path = path;
        }
        /**
         * @return { Array.<module:model/Node> }
         */
      },
      {
        key: "getChildren",
        value: function getChildren() {
          return this.children;
        }
        /**
         * @param { Array.<module:model/Node> } children
         */
      },
      {
        key: "setChildren",
        value: function setChildren(children) {
          this.children = children;
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
            object = new NodeEmbedded();
          }

          if (data.hasOwnProperty("path")) {
            object.path = _ApiClient.default.convertToType(data["path"], [
              object.pathType
            ]);
          }

          if (data.hasOwnProperty("children")) {
            object.children = _ApiClient.default.convertToType(
              data["children"],
              [object.childrenType]
            );
          }

          return object;
        }
      }
    ]
  );

  return NodeEmbedded;
})();

exports.default = NodeEmbedded;
