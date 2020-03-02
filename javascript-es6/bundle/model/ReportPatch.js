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
 * The ReportPatch model module.
 * @module model/ReportPatch
 */
var ReportPatch = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReportPatch".
   * @alias module:model/ReportPatch
   * @class
  
   */
  function ReportPatch() {
    _classCallCheck(this, ReportPatch);

    this.category = null;
    this.description = null;
    this.dueAt = null;
    this.identificationNumber = null;
    this.priority = null;
    this.tags = [];
  }
  /**
   * Constructs a "ReportPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportPatch } object Optional instance to populate.
   * @return { module:model/ReportPatch } The populated "ReportPatch" instance.
   */

  _createClass(
    ReportPatch,
    [
      {
        key: "getCategory",

        /**
         * @return { String }
         */
        value: function getCategory() {
          return this.category;
        }
        /**
         * @param { String } category
         */
      },
      {
        key: "setCategory",
        value: function setCategory(category) {
          this.category = category;
        }
        /**
         * @return { String }
         */
      },
      {
        key: "getDescription",
        value: function getDescription() {
          return this.description;
        }
        /**
         * @param { String } description
         */
      },
      {
        key: "setDescription",
        value: function setDescription(description) {
          this.description = description;
        }
        /**
         * @return { Date }
         */
      },
      {
        key: "getDueAt",
        value: function getDueAt() {
          return this.dueAt;
        }
        /**
         * @param { Date } dueAt
         */
      },
      {
        key: "setDueAt",
        value: function setDueAt(dueAt) {
          this.dueAt = dueAt;
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
         * @return { Number }
         */
      },
      {
        key: "getPriority",
        value: function getPriority() {
          return this.priority;
        }
        /**
         * @param { Number } priority
         */
      },
      {
        key: "setPriority",
        value: function setPriority(priority) {
          this.priority = priority;
        }
        /**
         * @return { Array.<String> }
         */
      },
      {
        key: "getTags",
        value: function getTags() {
          return this.tags;
        }
        /**
         * @param { Array.<String> } tags
         */
      },
      {
        key: "setTags",
        value: function setTags(tags) {
          this.tags = tags;
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
            object = new ReportPatch();
          }

          if (data.hasOwnProperty("category")) {
            object.category = _ApiClient.default.convertToType(
              data["category"],
              "String"
            );
          }

          if (data.hasOwnProperty("description")) {
            object.description = _ApiClient.default.convertToType(
              data["description"],
              "String"
            );
          }

          if (data.hasOwnProperty("dueAt")) {
            object.dueAt = _ApiClient.default.convertToType(
              data["dueAt"],
              "Date"
            );
          }

          if (data.hasOwnProperty("identificationNumber")) {
            object.identificationNumber = _ApiClient.default.convertToType(
              data["identificationNumber"],
              "String"
            );
          }

          if (data.hasOwnProperty("priority")) {
            object.priority = _ApiClient.default.convertToType(
              data["priority"],
              "Number"
            );
          }

          if (data.hasOwnProperty("tags")) {
            object.tags = _ApiClient.default.convertToType(
              data["tags"],
              "['String']"
            );
          }

          return object;
        }
      }
    ]
  );

  return ReportPatch;
})();

exports.default = ReportPatch;
