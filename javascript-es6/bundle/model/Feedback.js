"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackEmbedded = _interopRequireDefault(require("./FeedbackEmbedded"));

var _FeedbackGeoCoordinates = _interopRequireDefault(
  require("./FeedbackGeoCoordinates")
);

var _FeedbackLinks = _interopRequireDefault(require("./FeedbackLinks"));

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
 * The Feedback model module.
 * @module model/Feedback
 */
var Feedback =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Feedback".
   * @alias module:model/Feedback
   * @class
  
   * @param geoCoordinates { module:model/FeedbackGeoCoordinates }
  
   * @param state { Array.<String> }
  
   */
    function Feedback(geoCoordinates, state) {
      _classCallCheck(this, Feedback);

      this.embedded = null;
      this.links = null;
      this.createdAt = null;
      this.description = null;
      this.geoCoordinates = geoCoordinates;
      this.id = null;
      this.metadata = [];
      this._public = null;
      this.state = state;
      this.type = null;
      this.embeddedType = _FeedbackEmbedded.default;
      this.linksType = _FeedbackLinks.default;
      this.geoCoordinatesType = _FeedbackGeoCoordinates.default;
    }
    /**
     * Constructs a "Feedback" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Feedback } object Optional instance to populate.
     * @return { module:model/Feedback } The populated "Feedback" instance.
     */

    _createClass(Feedback, null, [
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
            object = new Feedback();
          }

          if (data.hasOwnProperty("_embedded")) {
            object.embedded = _ApiClient.default.convertToType(
              data["_embedded"],
              object.embeddedType
            );
          }

          if (data.hasOwnProperty("_links")) {
            object.links = _ApiClient.default.convertToType(
              data["_links"],
              object.linksType
            );
          }

          if (data.hasOwnProperty("createdAt")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["createdAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("geoCoordinates")) {
            object.geoCoordinates = _ApiClient.default.convertToType(
              data["geoCoordinates"],
              object.geoCoordinatesType
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("metadata")) {
            object.metadata = _ApiClient.default.convertToType(
              data["metadata"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("public")) {
            object._public = _ApiClient.default.convertToType(
              data["public"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("state")) {
            object.state = _ApiClient.default.convertToType(
              data["state"],
              "['String']"
            );
          }

          if (data.hasOwnProperty("type")) {
            object.type = _ApiClient.default.convertToType(
              data["type"],
              "String"
            );
          }

          return object;
        }
      }
    ]);

    return Feedback;
  })();

exports.default = Feedback;
