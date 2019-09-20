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
 * The CategoryPatch model module.
 * @module model/CategoryPatch
 */
var CategoryPatch =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "CategoryPatch".
   * @alias module:model/CategoryPatch
   * @class
  
   */
    function CategoryPatch() {
      _classCallCheck(this, CategoryPatch);

      this.color = null;
      this.icon = null;
      this.identificationNumber = null;
      this.name = null;
    }
    /**
     * Constructs a "CategoryPatch" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/CategoryPatch } object Optional instance to populate.
     * @return { module:model/CategoryPatch } The populated "CategoryPatch" instance.
     */

    _createClass(
      CategoryPatch,
      [
        {
          key: "getColor",

          /**
           * @return { String }
           */
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
          key: "getIcon",
          value: function getIcon() {
            return this.icon;
          }
          /**
           * @param { String } icon
           */
        },
        {
          key: "setIcon",
          value: function setIcon(icon) {
            this.icon = icon;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getIdentificationNumber",
          value: function getIdentificationNumber() {
            return this.identificationNumber;
          }
          /**
           * @param { String } identificationNumber
           */
        },
        {
          key: "setIdentificationNumber",
          value: function setIdentificationNumber(identificationNumber) {
            this.identificationNumber = identificationNumber;
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
              object = new CategoryPatch();
            }

            if (data.hasOwnProperty("color")) {
              object.color = _ApiClient.default.convertToType(
                data["color"],
                "String"
              );
            }

            if (data.hasOwnProperty("icon")) {
              object.icon = _ApiClient.default.convertToType(
                data["icon"],
                "String"
              );
            }

            if (data.hasOwnProperty("identificationNumber")) {
              object.identificationNumber = _ApiClient.default.convertToType(
                data["identificationNumber"],
                "String"
              );
            }

            if (data.hasOwnProperty("name")) {
              object.name = _ApiClient.default.convertToType(
                data["name"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return CategoryPatch;
  })();

exports.default = CategoryPatch;
