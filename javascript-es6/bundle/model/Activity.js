"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ActivityEntity = _interopRequireDefault(require("./ActivityEntity"));

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
 * The Activity model module.
 * @module model/Activity
 */
var Activity =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "Activity".
   * @alias module:model/Activity
   * @class
  
   */
    function Activity() {
      _classCallCheck(this, Activity);

      this.actor = null;
      this.message = null;
      this._object = null;
      this.origin = null;
      this.subject = null;
      this.time = null;
      this.title = null;
      this.verb = null;
      this.subjectType = _ActivityEntity.default;
    }
    /**
     * Constructs a "Activity" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/Activity } object Optional instance to populate.
     * @return { module:model/Activity } The populated "Activity" instance.
     */

    _createClass(
      Activity,
      [
        {
          key: "getActor",

          /**
           * @return { String }
           */
          value: function getActor() {
            return this.actor;
          }
          /**
           * @param { String } actor
           */
        },
        {
          key: "setActor",
          value: function setActor(actor) {
            this.actor = actor;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getMessage",
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
          key: "getObject",
          value: function getObject() {
            return this._object;
          }
          /**
           * @param { String } _object
           */
        },
        {
          key: "setObject",
          value: function setObject(_object) {
            this._object = _object;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getOrigin",
          value: function getOrigin() {
            return this.origin;
          }
          /**
           * @param { String } origin
           */
        },
        {
          key: "setOrigin",
          value: function setOrigin(origin) {
            this.origin = origin;
          }
          /**
           * @return { module:model/ActivityEntity }
           */
        },
        {
          key: "getSubject",
          value: function getSubject() {
            return this.subject;
          }
          /**
           * @param { module:model/ActivityEntity } subject
           */
        },
        {
          key: "setSubject",
          value: function setSubject(subject) {
            this.subject = subject;
          }
          /**
           * @return { Date }
           */
        },
        {
          key: "getTime",
          value: function getTime() {
            return this.time;
          }
          /**
           * @param { Date } time
           */
        },
        {
          key: "setTime",
          value: function setTime(time) {
            this.time = time;
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
          key: "getVerb",
          value: function getVerb() {
            return this.verb;
          }
          /**
           * @param { String } verb
           */
        },
        {
          key: "setVerb",
          value: function setVerb(verb) {
            this.verb = verb;
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
              object = new Activity();
            }

            if (data.hasOwnProperty("actor")) {
              object.actor = _ApiClient.default.convertToType(
                data["actor"],
                "String"
              );
            }

            if (data.hasOwnProperty("message")) {
              object.message = _ApiClient.default.convertToType(
                data["message"],
                "String"
              );
            }

            if (data.hasOwnProperty("object")) {
              object._object = _ApiClient.default.convertToType(
                data["object"],
                "String"
              );
            }

            if (data.hasOwnProperty("origin")) {
              object.origin = _ApiClient.default.convertToType(
                data["origin"],
                "String"
              );
            }

            if (data.hasOwnProperty("subject")) {
              object.subject = _ApiClient.default.convertToType(
                data["subject"],
                object.subjectType
              );
            }

            if (data.hasOwnProperty("time")) {
              object.time = _ApiClient.default.convertToType(
                data["time"],
                "Date"
              );
            }

            if (data.hasOwnProperty("title")) {
              object.title = _ApiClient.default.convertToType(
                data["title"],
                "String"
              );
            }

            if (data.hasOwnProperty("verb")) {
              object.verb = _ApiClient.default.convertToType(
                data["verb"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return Activity;
  })();

exports.default = Activity;
