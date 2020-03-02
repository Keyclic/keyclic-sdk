"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _Activity = _interopRequireDefault(require("./Activity"));

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
 * The ActivityGroup model module.
 * @module model/ActivityGroup
 */
var ActivityGroup = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ActivityGroup".
     * @alias module:model/ActivityGroup
     * @class
    
     */
  function ActivityGroup() {
    _classCallCheck(this, ActivityGroup);

    this.activities = [];
    this.activityCount = null;
    this.actorCount = null;
    this.createdAt = null;
    this.group = null;
    this.id = null;
    this.updatedAt = null;
    this.verb = null;
    this.isRead = null;
    this.isSeen = null;
    this.activitiesType = _Activity.default;
  }
  /**
   * Constructs a "ActivityGroup" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ActivityGroup } object Optional instance to populate.
   * @return { module:model/ActivityGroup } The populated "ActivityGroup" instance.
   */

  _createClass(
    ActivityGroup,
    [
      {
        key: "getActivities",

        /**
         * @return { Array.<module:model/Activity> }
         */
        value: function getActivities() {
          return this.activities;
        }
        /**
         * @param { Array.<module:model/Activity> } activities
         */
      },
      {
        key: "setActivities",
        value: function setActivities(activities) {
          this.activities = activities;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getActivityCount",
        value: function getActivityCount() {
          return this.activityCount;
        }
        /**
         * @param { Number } activityCount
         */
      },
      {
        key: "setActivityCount",
        value: function setActivityCount(activityCount) {
          this.activityCount = activityCount;
        }
        /**
         * @return { Number }
         */
      },
      {
        key: "getActorCount",
        value: function getActorCount() {
          return this.actorCount;
        }
        /**
         * @param { Number } actorCount
         */
      },
      {
        key: "setActorCount",
        value: function setActorCount(actorCount) {
          this.actorCount = actorCount;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getCreatedAt",
        value: function getCreatedAt() {
          return this.createdAt;
        }
        /**
         * @param { Date } createdAt
         */
      },
      {
        key: "setCreatedAt",
        value: function setCreatedAt(createdAt) {
          this.createdAt = createdAt;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getGroup",
        value: function getGroup() {
          return this.group;
        }
        /**
         * @param { String } group
         */
      },
      {
        key: "setGroup",
        value: function setGroup(group) {
          this.group = group;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getId",
        value: function getId() {
          return this.id;
        }
        /**
         * @param { String } id
         */
      },
      {
        key: "setId",
        value: function setId(id) {
          this.id = id;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getUpdatedAt",
        value: function getUpdatedAt() {
          return this.updatedAt;
        }
        /**
         * @param { Date } updatedAt
         */
      },
      {
        key: "setUpdatedAt",
        value: function setUpdatedAt(updatedAt) {
          this.updatedAt = updatedAt;
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
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getIsRead",
        value: function getIsRead() {
          return this.isRead;
        }
        /**
         * @param { Boolean } isRead
         */
      },
      {
        key: "setIsRead",
        value: function setIsRead(isRead) {
          this.isRead = isRead;
        }
        /**
         * @return { Boolean }
         */
      },
      {
        key: "getIsSeen",
        value: function getIsSeen() {
          return this.isSeen;
        }
        /**
         * @param { Boolean } isSeen
         */
      },
      {
        key: "setIsSeen",
        value: function setIsSeen(isSeen) {
          this.isSeen = isSeen;
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
            object = new ActivityGroup();
          }

          if (data.hasOwnProperty("activities")) {
            object.activities = _ApiClient.default.convertToType(
              data["activities"],
              [object.activitiesType]
            );
          }

          if (data.hasOwnProperty("activity_count")) {
            object.activityCount = _ApiClient.default.convertToType(
              data["activity_count"],
              "Number"
            );
          }

          if (data.hasOwnProperty("actor_count")) {
            object.actorCount = _ApiClient.default.convertToType(
              data["actor_count"],
              "Number"
            );
          }

          if (data.hasOwnProperty("created_at")) {
            object.createdAt = _ApiClient.default.convertToType(
              data["created_at"],
              "Date"
            );
          }

          if (data.hasOwnProperty("group")) {
            object.group = _ApiClient.default.convertToType(
              data["group"],
              "String"
            );
          }

          if (data.hasOwnProperty("id")) {
            object.id = _ApiClient.default.convertToType(data["id"], "String");
          }

          if (data.hasOwnProperty("updated_at")) {
            object.updatedAt = _ApiClient.default.convertToType(
              data["updated_at"],
              "Date"
            );
          }

          if (data.hasOwnProperty("verb")) {
            object.verb = _ApiClient.default.convertToType(
              data["verb"],
              "String"
            );
          }

          if (data.hasOwnProperty("is_read")) {
            object.isRead = _ApiClient.default.convertToType(
              data["is_read"],
              "Boolean"
            );
          }

          if (data.hasOwnProperty("is_seen")) {
            object.isSeen = _ApiClient.default.convertToType(
              data["is_seen"],
              "Boolean"
            );
          }

          return object;
        }
      }
    ]
  );

  return ActivityGroup;
})();

exports.default = ActivityGroup;
