"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _CheckpointLinks = _interopRequireDefault(require("./CheckpointLinks"));

var _CheckpointState = _interopRequireDefault(require("./CheckpointState"));

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
 * The Checkpoint model module.
 * @module model/Checkpoint
 */
var Checkpoint = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "Checkpoint".
   * @alias module:model/Checkpoint
   * @class
  
   */
  function Checkpoint() {
    _classCallCheck(this, Checkpoint);

    this.createdAt = null;
    this.data = null;
    this.state = [];
    this.links = null;
    this.dataType = _CheckpointState.default;
    this.linksType = _CheckpointLinks.default;
  }
  /**
   * Constructs a "Checkpoint" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Checkpoint } object Optional instance to populate.
   * @return { module:model/Checkpoint } The populated "Checkpoint" instance.
   */

  _createClass(
    Checkpoint,
    [
      {
        key: "getCreatedAt",

        /**
         * @return { Date }
         */
        value: function getCreatedAt() {
          return this.createdAt;
        }
        /**
         * @return { module:model/CheckpointState }
         */
      },
      {
        key: "getData",
        value: function getData() {
          return this.data;
        }
        /**
         * @param { module:model/CheckpointState } data
         */
      },
      {
        key: "setData",
        value: function setData(data) {
          this.data = data;
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
         * @return { module:model/CheckpointLinks }
         */
      },
      {
        key: "getLinks",
        value: function getLinks() {
          return this.links;
        }
        /**
         * @param { module:model/CheckpointLinks } links
         */
      },
      {
        key: "setLinks",
        value: function setLinks(links) {
          this.links = links;
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
            object = new Checkpoint();
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("data")) {
            object.data = _ApiClient.default.convertToType(
              data["data"],
              object.dataType
            );
          }

          if (data.hasOwnProperty("state")) {
            object.state = _ApiClient.default.convertToType(
              data["state"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          return object;
        }
      }
    ]
  );

  return Checkpoint;
})();

exports.default = Checkpoint;
