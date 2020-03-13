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
 * The WorkflowState model module.
 * @module model/WorkflowState
 */
var WorkflowState = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "WorkflowState".
   * @alias module:model/WorkflowState
   * @class
  
   */
  function WorkflowState() {
    _classCallCheck(this, WorkflowState);

    this.allowAdd = null;
    this.allowDispatch = null;
    this.color = null;
    this.description = null;
    this.id = null;
    this.name = null;
    this.progression = null;
    this.type = null;
  }
  /**
   * Constructs a "WorkflowState" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WorkflowState } object Optional instance to populate.
   * @return { module:model/WorkflowState } The populated "WorkflowState" instance.
   */

  _createClass(
    WorkflowState,
    [
      {
        key: "getAllowAdd",

        /**
         * @return { Boolean }
         */
        value: function getAllowAdd() {
          return this.allowAdd;
        }
        /**
         * @param { Boolean } allowAdd
         */
      },
      {
        key: "setAllowAdd",
        value: function setAllowAdd(allowAdd) {
          this.allowAdd = allowAdd;
        }
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getAllowDispatch",
        value: function getAllowDispatch() {
          return this.allowDispatch;
        }
        /**
         * @param { Boolean } allowDispatch
         */
      },
      {
        key: "setAllowDispatch",
        value: function setAllowDispatch(allowDispatch) {
          this.allowDispatch = allowDispatch;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getColor",
        value: function getColor() {
          return this.color;
        }
        /**
         * @param { String } color
         */
      },
      {
        key: "setColor",
        value: function setColor(color) {
          this.color = color;
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
         * @return { Number }
         */
      },
      {
        key: "getProgression",
        value: function getProgression() {
          return this.progression;
        }
        /**
         * @param { Number } progression
         */
      },
      {
        key: "setProgression",
        value: function setProgression(progression) {
          this.progression = progression;
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
            object = new WorkflowState();
          }

          if (data.hasOwnProperty("allowAdd")) {
            object.allowAdd = _ApiClient.default.convertToType(
              data["allowAdd"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("allowDispatch")) {
            object.allowDispatch = _ApiClient.default.convertToType(
              data["allowDispatch"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("color")) {
            object.color = _ApiClient.default.convertToType(
              data["color"],
              "String"
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

          if (data.hasOwnProperty("progression")) {
            object.progression = _ApiClient.default.convertToType(
              data["progression"],
              "Number"
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

  return WorkflowState;
})();

exports.default = WorkflowState;
