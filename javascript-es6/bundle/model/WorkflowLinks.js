"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _WorkflowLinksSelf = _interopRequireDefault(require("./WorkflowLinksSelf"));

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
 * The WorkflowLinks model module.
 * @module model/WorkflowLinks
 */
var WorkflowLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "WorkflowLinks".
   * @alias module:model/WorkflowLinks
   * @class
  
   */
    function WorkflowLinks() {
      _classCallCheck(this, WorkflowLinks);

      this.self = null;
      this.selfType = _WorkflowLinksSelf.default;
    }
    /**
     * Constructs a "WorkflowLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/WorkflowLinks } object Optional instance to populate.
     * @return { module:model/WorkflowLinks } The populated "WorkflowLinks" instance.
     */

    _createClass(
      WorkflowLinks,
      [
        {
          key: "getSelf",

          /**
           * @return { module:model/WorkflowLinksSelf }
           */
          value: function getSelf() {
            return this.self;
          }
          /**
           * @param { module:model/WorkflowLinksSelf } self
           */
        },
        {
          key: "setSelf",
          value: function setSelf(self) {
            this.self = self;
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
              object = new WorkflowLinks();
            }

            if (data.hasOwnProperty("self")) {
              object.self = _ApiClient.default.convertToType(
                data["self"],
                object.selfType
              );
            }

            return object;
          }
        }
      ]
    );

    return WorkflowLinks;
  })();

exports.default = WorkflowLinks;
