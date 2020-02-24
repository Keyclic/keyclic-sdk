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
 * The State model module.
 * @module model/State
 */
var State =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "State".
   * @alias module:model/State
   * @class
  
   */
    function State() {
      _classCallCheck(this, State);

      this.id = null;
      this.type = null;
      this.name = null;
      this.description = null;
      this.color = null;
      this.progression = null;
    }
    /**
     * Constructs a "State" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/State } object Optional instance to populate.
     * @return { module:model/State } The populated "State" instance.
     */

    _createClass(
      State,
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
              object = new State();
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

            if (data.hasOwnProperty("description")) {
              object.description = _ApiClient.default.convertToType(
                data["description"],
                "String"
              );
            }

            if (data.hasOwnProperty("color")) {
              object.color = _ApiClient.default.convertToType(
                data["color"],
                "String"
              );
            }

            if (data.hasOwnProperty("progression")) {
              object.progression = _ApiClient.default.convertToType(
                data["progression"],
                "Number"
              );
            }

            return object;
          }
        }
      ]
    );

    return State;
  })();

exports.default = State;
