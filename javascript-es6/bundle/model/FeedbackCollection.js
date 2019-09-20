"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Feedback = _interopRequireDefault(require("./Feedback"));

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
 * The FeedbackCollection model module.
 * @module model/FeedbackCollection
 */
var FeedbackCollection =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackCollection".
   * @alias module:model/FeedbackCollection
   * @class
  
   */
    function FeedbackCollection() {
      _classCallCheck(this, FeedbackCollection);

      this.items = [];
      this.itemsType = _Feedback.default;
    }
    /**
     * Constructs a "FeedbackCollection" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackCollection } object Optional instance to populate.
     * @return { module:model/FeedbackCollection } The populated "FeedbackCollection" instance.
     */

    _createClass(
      FeedbackCollection,
      [
        {
          key: "getItems",

          /**
           * @return { Array.<module:model/Feedback> }
           */
          value: function getItems() {
            return this.items;
          }
          /**
           * @param { Array.<module:model/Feedback> } items
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
              object = new FeedbackCollection();
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

    return FeedbackCollection;
  })();

exports.default = FeedbackCollection;
