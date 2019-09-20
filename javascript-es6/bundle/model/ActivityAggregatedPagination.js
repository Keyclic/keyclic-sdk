"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ActivityGroup = _interopRequireDefault(require("./ActivityGroup"));

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
 * The ActivityAggregatedPagination model module.
 * @module model/ActivityAggregatedPagination
 */
var ActivityAggregatedPagination =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ActivityAggregatedPagination".
   * @alias module:model/ActivityAggregatedPagination
   * @class
  
   */
    function ActivityAggregatedPagination() {
      _classCallCheck(this, ActivityAggregatedPagination);

      this.duration = null;
      this.next = null;
      this.unseen = null;
      this.unread = null;
      this.results = [];
      this.resultsType = _ActivityGroup.default;
    }
    /**
     * Constructs a "ActivityAggregatedPagination" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ActivityAggregatedPagination } object Optional instance to populate.
     * @return { module:model/ActivityAggregatedPagination } The populated "ActivityAggregatedPagination" instance.
     */

    _createClass(
      ActivityAggregatedPagination,
      [
        {
          key: "getDuration",

          /**
           * @return { String }
           */
          value: function getDuration() {
            return this.duration;
          }
          /**
           * @param { String } duration
           */
        },
        {
          key: "setDuration",
          value: function setDuration(duration) {
            this.duration = duration;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getNext",
          value: function getNext() {
            return this.next;
          }
          /**
           * @param { String } next
           */
        },
        {
          key: "setNext",
          value: function setNext(next) {
            this.next = next;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getUnseen",
          value: function getUnseen() {
            return this.unseen;
          }
          /**
           * @param { Number } unseen
           */
        },
        {
          key: "setUnseen",
          value: function setUnseen(unseen) {
            this.unseen = unseen;
          }
          /**
           * @return { Number }
           */
        },
        {
          key: "getUnread",
          value: function getUnread() {
            return this.unread;
          }
          /**
           * @param { Number } unread
           */
        },
        {
          key: "setUnread",
          value: function setUnread(unread) {
            this.unread = unread;
          }
          /**
           * @return { Array.<module:model/ActivityGroup> }
           */
        },
        {
          key: "getResults",
          value: function getResults() {
            return this.results;
          }
          /**
           * @param { Array.<module:model/ActivityGroup> } results
           */
        },
        {
          key: "setResults",
          value: function setResults(results) {
            this.results = results;
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
              object = new ActivityAggregatedPagination();
            }

            if (data.hasOwnProperty("duration")) {
              object.duration = _ApiClient.default.convertToType(
                data["duration"],
                "String"
              );
            }

            if (data.hasOwnProperty("next")) {
              object.next = _ApiClient.default.convertToType(
                data["next"],
                "String"
              );
            }

            if (data.hasOwnProperty("unseen")) {
              object.unseen = _ApiClient.default.convertToType(
                data["unseen"],
                "Number"
              );
            }

            if (data.hasOwnProperty("unread")) {
              object.unread = _ApiClient.default.convertToType(
                data["unread"],
                "Number"
              );
            }

            if (data.hasOwnProperty("results")) {
              object.results = _ApiClient.default.convertToType(
                data["results"],
                [object.resultsType]
              );
            }

            return object;
          }
        }
      ]
    );

    return ActivityAggregatedPagination;
  })();

exports.default = ActivityAggregatedPagination;
