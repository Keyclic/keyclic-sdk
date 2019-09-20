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
 * The OperationLinksSelfIriTemplateMapping model module.
 * @module model/OperationLinksSelfIriTemplateMapping
 */
var OperationLinksSelfIriTemplateMapping =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "OperationLinksSelfIriTemplateMapping".
   * @alias module:model/OperationLinksSelfIriTemplateMapping
   * @class
  
   */
    function OperationLinksSelfIriTemplateMapping() {
      _classCallCheck(this, OperationLinksSelfIriTemplateMapping);

      this.operation = null;
    }
    /**
     * Constructs a "OperationLinksSelfIriTemplateMapping" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/OperationLinksSelfIriTemplateMapping } object Optional instance to populate.
     * @return { module:model/OperationLinksSelfIriTemplateMapping } The populated "OperationLinksSelfIriTemplateMapping" instance.
     */

    _createClass(
      OperationLinksSelfIriTemplateMapping,
      [
        {
          key: "getOperation",

          /**
           * @return { String }
           */
          value: function getOperation() {
            return this.operation;
          }
          /**
           * @param { String } operation
           */
        },
        {
          key: "setOperation",
          value: function setOperation(operation) {
            this.operation = operation;
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
              object = new OperationLinksSelfIriTemplateMapping();
            }

            if (data.hasOwnProperty("operation")) {
              object.operation = _ApiClient.default.convertToType(
                data["operation"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return OperationLinksSelfIriTemplateMapping;
  })();

exports.default = OperationLinksSelfIriTemplateMapping;
