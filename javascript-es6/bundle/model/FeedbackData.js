"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _FeedbackDataGeo = _interopRequireDefault(require("./FeedbackDataGeo"));

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

function _defineProperty(obj, key, value) {
  if (key in obj) {
    Object.defineProperty(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }
  return obj;
}

/**
 * The FeedbackData model module.
 * @module model/FeedbackData
 */
var FeedbackData =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "FeedbackData".
   * @alias module:model/FeedbackData
   * @class
  
   * @param geo { module:model/FeedbackDataGeo }
  
   * @param visibility { module:model/FeedbackData.VisibilityEnum }
  
   */
    function FeedbackData(geo, visibility) {
      _classCallCheck(this, FeedbackData);

      this.businessActivity = null;
      this.category = null;
      this.description = null;
      this.geo = geo;
      this.metadata = [];
      this.place = null;
      this.proMode = null;
      this.visibility = visibility;
      this.geoType = _FeedbackDataGeo.default;
    }
    /**
     * Constructs a "FeedbackData" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/FeedbackData } object Optional instance to populate.
     * @return { module:model/FeedbackData } The populated "FeedbackData" instance.
     */

    _createClass(
      FeedbackData,
      [
        {
          key: "getBusinessActivity",

          /**
           * @return { String }
           */
          value: function getBusinessActivity() {
            return this.businessActivity;
          }
          /**
           * @param { String } businessActivity
           */
        },
        {
          key: "setBusinessActivity",
          value: function setBusinessActivity(businessActivity) {
            this.businessActivity = businessActivity;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getCategory",
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
           * @return { module:model/FeedbackDataGeo }
           */
        },
        {
          key: "getGeo",
          value: function getGeo() {
            return this.geo;
          }
          /**
           * @param { module:model/FeedbackDataGeo } geo
           */
        },
        {
          key: "setGeo",
          value: function setGeo(geo) {
            this.geo = geo;
          }
          /**
           * @return { Object.<String, String> }
           */
        },
        {
          key: "getMetadata",
          value: function getMetadata() {
            return this.metadata;
          }
          /**
           * @param { Object.<String, String> } metadata
           */
        },
        {
          key: "setMetadata",
          value: function setMetadata(metadata) {
            this.metadata = metadata;
          }
          /**
           * @return { String }
           */
        },
        {
          key: "getPlace",
          value: function getPlace() {
            return this.place;
          }
          /**
           * @param { String } place
           */
        },
        {
          key: "setPlace",
          value: function setPlace(place) {
            this.place = place;
          }
          /**
           * @return { Boolean }
           */
        },
        {
          key: "getProMode",
          value: function getProMode() {
            return this.proMode;
          }
          /**
           * @param { Boolean } proMode
           */
        },
        {
          key: "setProMode",
          value: function setProMode(proMode) {
            this.proMode = proMode;
          }
          /**
           * @return { module:model/FeedbackData.VisibilityEnum }
           */
        },
        {
          key: "getVisibility",
          value: function getVisibility() {
            return this.visibility;
          }
          /**
           * @param { module:model/FeedbackData.VisibilityEnum } visibility
           */
        },
        {
          key: "setVisibility",
          value: function setVisibility(visibility) {
            this.visibility = visibility;
          }
          /**
           * Allowed values for the "visibility" property.
           * @enum { String }
           */
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
              object = new FeedbackData();
            }

            if (data.hasOwnProperty("businessActivity")) {
              object.businessActivity = _ApiClient.default.convertToType(
                data["businessActivity"],
                "String"
              );
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

            if (data.hasOwnProperty("geo")) {
              object.geo = _ApiClient.default.convertToType(
                data["geo"],
                object.geoType
              );
            }

            if (data.hasOwnProperty("metadata")) {
              object.metadata = _ApiClient.default.convertToType(
                data["metadata"],
                "['String']"
              );
            }

            if (data.hasOwnProperty("place")) {
              object.place = _ApiClient.default.convertToType(
                data["place"],
                "String"
              );
            }

            if (data.hasOwnProperty("proMode")) {
              object.proMode = _ApiClient.default.convertToType(
                data["proMode"],
                "Boolean"
              );
            }

            if (data.hasOwnProperty("visibility")) {
              object.visibility = _ApiClient.default.convertToType(
                data["visibility"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return FeedbackData;
  })();

exports.default = FeedbackData;

_defineProperty(FeedbackData, "VisibilityEnum", {
  /**
   * value: "VISIBILITY_PRIVATE"
   * @const
   * @readonly
   */
  PRIVATE: "VISIBILITY_PRIVATE",

  /**
   * value: "VISIBILITY_PUBLIC"
   * @const
   * @readonly
   */
  PUBLIC: "VISIBILITY_PUBLIC"
});
