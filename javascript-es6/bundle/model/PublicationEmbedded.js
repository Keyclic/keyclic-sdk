"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Person = _interopRequireDefault(require("./Person"));

var _Place = _interopRequireDefault(require("./Place"));

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
 * The PublicationEmbedded model module.
 * @module model/PublicationEmbedded
 */
var PublicationEmbedded = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "PublicationEmbedded".
   * @alias module:model/PublicationEmbedded
   * @class
  
   */
  function PublicationEmbedded() {
    _classCallCheck(this, PublicationEmbedded);

    this.author = null;
    this.place = null;
    this.authorType = _Person.default;
    this.placeType = _Place.default;
  }
  /**
   * Constructs a "PublicationEmbedded" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PublicationEmbedded } object Optional instance to populate.
   * @return { module:model/PublicationEmbedded } The populated "PublicationEmbedded" instance.
   */

  _createClass(
    PublicationEmbedded,
    [
      {
        key: "getAuthor",

        /**
         * @return { module:model/Person }
         */
        value: function getAuthor() {
          return this.author;
        }
        /**
         * @param { module:model/Person } author
         */
      },
      {
        key: "setAuthor",
        value: function setAuthor(author) {
          this.author = author;
        }
        /**
         * @return { module:model/Place }
         */
      },
      {
        key: "getPlace",
        value: function getPlace() {
          return this.place;
        }
        /**
         * @param { module:model/Place } place
         */
      },
      {
        key: "setPlace",
        value: function setPlace(place) {
          this.place = place;
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
            object = new PublicationEmbedded();
          }

          if (data.hasOwnProperty("author")) {
            object.author = _ApiClient.default.convertToType(
              data["author"],
              object.authorType
            );
          }

          if (data.hasOwnProperty("place")) {
            object.place = _ApiClient.default.convertToType(
              data["place"],
              object.placeType
            );
          }

          return object;
        }
      }
    ]
  );

  return PublicationEmbedded;
})();

exports.default = PublicationEmbedded;
