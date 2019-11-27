"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReviewRequest = _interopRequireDefault(require("./ReviewRequest"));

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
 * The ReviewRequestCollection model module.
 * @module model/ReviewRequestCollection
 */
var ReviewRequestCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ReviewRequestCollection".
   * @alias module:model/ReviewRequestCollection
   * @class
  
   */
    function ReviewRequestCollection() {
      _classCallCheck(this, ReviewRequestCollection);

      this.items = [];
      this.itemsType = _ReviewRequest.default;
    }
    /**
     * Constructs a "ReviewRequestCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ReviewRequestCollection } object Optional instance to populate.
     * @return { module:model/ReviewRequestCollection } The populated "ReviewRequestCollection" instance.
     */

    _createClass(
      ReviewRequestCollection,
      [
        {
          key: "getItems",

          /**
           * @return { Array.<module:model/ReviewRequest> }
           */
          value: function getItems() {
            return this.items;
          }
          /**
           * @param { Array.<module:model/ReviewRequest> } items
           */
        },
        {
          key: "setItems",
          value: function setItems(items) {
            this.items = items;
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
              object = new ReviewRequestCollection();
            }

            if (data.hasOwnProperty("items")) {
              object.items = _ApiClient.default.convertToType(data["items"], [
                object.itemsType
              ]);
            }

            return object;
          }
        }
      ]
    );

    return ReviewRequestCollection;
  })();

exports.default = ReviewRequestCollection;
