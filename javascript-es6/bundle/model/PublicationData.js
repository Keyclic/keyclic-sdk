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
 * The PublicationData model module.
 * @module model/PublicationData
 */
var PublicationData = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "PublicationData".
     * @alias module:model/PublicationData
     * @class
    
     * @param message { String }
    
     * @param feed { String }
    
     * @param title { String }
    
     * @param organization { String }
    
     */
  function PublicationData(message, feed, title, organization) {
    _classCallCheck(this, PublicationData);

    this.message = message;
    this.feed = feed;
    this.title = title;
    this.organization = organization;
  }
  /**
   * Constructs a "PublicationData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PublicationData } object Optional instance to populate.
   * @return { module:model/PublicationData } The populated "PublicationData" instance.
   */

  _createClass(
    PublicationData,
    [
      {
        key: "getMessage",

        /**
         * @return { String }
         */
        value: function getMessage() {
          return this.message;
        }
        /**
         * @param { String } message
         */
      },
      {
        key: "setMessage",
        value: function setMessage(message) {
          this.message = message;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getFeed",
        value: function getFeed() {
          return this.feed;
        }
        /**
         * @param { String } feed
         */
      },
      {
        key: "setFeed",
        value: function setFeed(feed) {
          this.feed = feed;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getTitle",
        value: function getTitle() {
          return this.title;
        }
        /**
         * @param { String } title
         */
      },
      {
        key: "setTitle",
        value: function setTitle(title) {
          this.title = title;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getOrganization",
        value: function getOrganization() {
          return this.organization;
        }
        /**
         * @param { String } organization
         */
      },
      {
        key: "setOrganization",
        value: function setOrganization(organization) {
          this.organization = organization;
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
            object = new PublicationData();
          }

          if (data.hasOwnProperty("message")) {
            object.message = _ApiClient.default.convertToType(
              data["message"],
              "String"
            );
          }

          if (data.hasOwnProperty("feed")) {
            object.feed = _ApiClient.default.convertToType(
              data["feed"],
              "String"
            );
          }

          if (data.hasOwnProperty("title")) {
            object.title = _ApiClient.default.convertToType(
              data["title"],
              "String"
            );
          }

          if (data.hasOwnProperty("organization")) {
            object.organization = _ApiClient.default.convertToType(
              data["organization"],
              "String"
            );
          }

          return object;
        }
      }
    ]
  );

  return PublicationData;
})();

exports.default = PublicationData;
