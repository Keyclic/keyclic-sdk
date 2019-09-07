"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Contribution = _interopRequireDefault(require("./Contribution"));

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
 * The ContributionCollection model module.
 * @module model/ContributionCollection
 */
var ContributionCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ContributionCollection".
   * @alias module:model/ContributionCollection
   * @class
  
   */
    function ContributionCollection() {
      _classCallCheck(this, ContributionCollection);

      this.items = [];
      this.itemsType = _Contribution.default;
    }
    /**
     * Constructs a "ContributionCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ContributionCollection } object Optional instance to populate.
     * @return { module:model/ContributionCollection } The populated "ContributionCollection" instance.
     */

    _createClass(ContributionCollection, null, [
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
            object = new ContributionCollection();
          }

          if (data.hasOwnProperty("items")) {
            object.items = _ApiClient.default.convertToType(data["items"], [
              object.itemsType
            ]);
          }

          return object;
        }
      }
    ]);

    return ContributionCollection;
  })();

exports.default = ContributionCollection;
