"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Node = _interopRequireDefault(require("./Node"));

var _NodePath = _interopRequireDefault(require("./NodePath"));

var _Organization = _interopRequireDefault(require("./Organization"));

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
 * The PlaceEmbedded model module.
 * @module model/PlaceEmbedded
 */
var PlaceEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PlaceEmbedded".
   * @alias module:model/PlaceEmbedded
   * @class
  
   */
  function PlaceEmbedded() {
    _classCallCheck(this, PlaceEmbedded);

    this.children = [];
    this.organization = null;
    this.path = [];
    this.childrenType = _Node.default;
    this.organizationType = _Organization.default;
    this.pathType = _NodePath.default;
  }
  /**
   * Constructs a "PlaceEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceEmbedded } object Optional instance to populate.
   * @return { module:model/PlaceEmbedded } The populated "PlaceEmbedded" instance.
   */

  _createClass(
    PlaceEmbedded,
    [
      {
        key: "getChildren",

        /**
         * @return { Array.<module:model/Node> }
         */
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
        /**
         * @return { module:model/Organization }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { module:model/Organization } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
        }
        /**
         * @return { Array.<module:model/NodePath> }
         */
      },
      {
        key: "getPath",
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
            object = new PlaceEmbedded();
          }

          if (data.hasOwnProperty("children")) {
            object.children = _ApiClient.default.convertToType(
              data["children"],
              [object.childrenType]
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              object.organizationType
            );
          }

          if (data.hasOwnProperty("path")) {
            object.path = _ApiClient.default.convertToType(data["path"], [
              object.pathType
            ]);
          }

          return object;
        }
      }
    ]
  );

  return PlaceEmbedded;
})();

exports.default = PlaceEmbedded;
