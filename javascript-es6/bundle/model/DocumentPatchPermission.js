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
 * The DocumentPatchPermission model module.
 * @module model/DocumentPatchPermission
 */
var DocumentPatchPermission =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DocumentPatchPermission".
   * @alias module:model/DocumentPatchPermission
   * @class
  
   */
    function DocumentPatchPermission() {
      _classCallCheck(this, DocumentPatchPermission);

      this.targetGroup = null;
    }
    /**
     * Constructs a "DocumentPatchPermission" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DocumentPatchPermission } object Optional instance to populate.
     * @return { module:model/DocumentPatchPermission } The populated "DocumentPatchPermission" instance.
     */

    _createClass(
      DocumentPatchPermission,
      [
        {
          key: "getTargetGroup",

          /**
           * @return { String }
           */
          value: function getTargetGroup() {
            return this.targetGroup;
          }
          /**
           * @param { String } targetGroup
           */
        },
        {
          key: "setTargetGroup",
          value: function setTargetGroup(targetGroup) {
            this.targetGroup = targetGroup;
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
              object = new DocumentPatchPermission();
            }

            if (data.hasOwnProperty("targetGroup")) {
              object.targetGroup = _ApiClient.default.convertToType(
                data["targetGroup"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return DocumentPatchPermission;
  })();

exports.default = DocumentPatchPermission;
