"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportLinksPlaceIriTemplate = _interopRequireDefault(
  require("./ReportLinksPlaceIriTemplate")
);

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
 * The ReportLinksPlace model module.
 * @module model/ReportLinksPlace
 */
var ReportLinksPlace = /*#__PURE__*/ (function() {
  /**
   * Constructs a new "ReportLinksPlace".
   * @alias module:model/ReportLinksPlace
   * @class
  
   */
  function ReportLinksPlace() {
    _classCallCheck(this, ReportLinksPlace);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _ReportLinksPlaceIriTemplate.default;
  }
  /**
   * Constructs a "ReportLinksPlace" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportLinksPlace } object Optional instance to populate.
   * @return { module:model/ReportLinksPlace } The populated "ReportLinksPlace" instance.
   */

  _createClass(
    ReportLinksPlace,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the place associated to the given report.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the place associated to the given report.
         * @param { String } href The URI of the place associated to the given report.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/ReportLinksPlaceIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/ReportLinksPlaceIriTemplate } iriTemplate
         */
      },
      {
        key: "setIriTemplate",
        value: function setIriTemplate(iriTemplate) {
          this.iriTemplate = iriTemplate;
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
            object = new ReportLinksPlace();
          }

          if (data.hasOwnProperty("href")) {
            object.href = _ApiClient.default.convertToType(
              data["href"],
              "String"
            );
          }

          if (data.hasOwnProperty("iriTemplate")) {
            object.iriTemplate = _ApiClient.default.convertToType(
              data["iriTemplate"],
              object.iriTemplateType
            );
          }

          return object;
        }
      }
    ]
  );

  return ReportLinksPlace;
})();

exports.default = ReportLinksPlace;
