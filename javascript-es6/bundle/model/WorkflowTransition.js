"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WorkflowState = _interopRequireDefault(require("./WorkflowState"));

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
 * The WorkflowTransition model module.
 * @module model/WorkflowTransition
 */
var WorkflowTransition = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "WorkflowTransition".
   * @alias module:model/WorkflowTransition
   * @class
  
   */
  function WorkflowTransition() {
    _classCallCheck(this, WorkflowTransition);

    this.commentRequired = null;
    this.description = null;
    this.from = null;
    this.id = null;
    this.name = null;
    this.to = null;
    this.type = null;
    this.fromType = _WorkflowState.default;
    this.toType = _WorkflowState.default;
  }
  /**
   * Constructs a "WorkflowTransition" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WorkflowTransition } object Optional instance to populate.
   * @return { module:model/WorkflowTransition } The populated "WorkflowTransition" instance.
   */

  _createClass(
    WorkflowTransition,
    [
      {
        key: "getCommentRequired",

        /**
         * @return { Boolean }
         */
        value: function getCommentRequired() {
          return this.commentRequired;
        }
        /**
         * @param { Boolean } commentRequired
         */
      },
      {
        key: "setCommentRequired",
        value: function setCommentRequired(commentRequired) {
          this.commentRequired = commentRequired;
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
         * @return { module:model/WorkflowState }
         */
      },
      {
        key: "getFrom",
        value: function getFrom() {
          return this.from;
        }
        /**
         * @param { module:model/WorkflowState } from
         */
      },
      {
        key: "setFrom",
        value: function setFrom(from) {
          this.from = from;
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
         * @return { module:model/WorkflowState }
         */
      },
      {
        key: "getTo",
        value: function getTo() {
          return this.to;
        }
        /**
         * @param { module:model/WorkflowState } to
         */
      },
      {
        key: "setTo",
        value: function setTo(to) {
          this.to = to;
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
            object = new WorkflowTransition();
          }

          if (data.hasOwnProperty("commentRequired")) {
            object.commentRequired = _ApiClient.default.convertToType(
              data["commentRequired"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("from")) {
            object.from = _ApiClient.default.convertToType(
              data["from"],
              object.fromType
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

          if (data.hasOwnProperty("to")) {
            object.to = _ApiClient.default.convertToType(
              data["to"],
              object.toType
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return WorkflowTransition;
})();

exports.default = WorkflowTransition;
