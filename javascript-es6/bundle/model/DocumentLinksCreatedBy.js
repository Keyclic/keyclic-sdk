"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DocumentLinksCreatedByIriTemplate = _interopRequireDefault(
  require("./DocumentLinksCreatedByIriTemplate")
);

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
 * The DocumentLinksCreatedBy model module.
 * @module model/DocumentLinksCreatedBy
 */
var DocumentLinksCreatedBy =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentLinksCreatedBy".
   * @alias module:model/DocumentLinksCreatedBy
   * @class
  
   */
    function DocumentLinksCreatedBy() {
      _classCallCheck(this, DocumentLinksCreatedBy);

      this.href = null;
      this.iriTemplate = null;
      this.iriTemplateType = _DocumentLinksCreatedByIriTemplate.default;
    }
    /**
     * Constructs a "DocumentLinksCreatedBy" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentLinksCreatedBy } object Optional instance to populate.
     * @return { module:model/DocumentLinksCreatedBy } The populated "DocumentLinksCreatedBy" instance.
     */

    _createClass(DocumentLinksCreatedBy, null, [
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
            object = new DocumentLinksCreatedBy();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]);

    return DocumentLinksCreatedBy;
  })();

exports.default = DocumentLinksCreatedBy;
