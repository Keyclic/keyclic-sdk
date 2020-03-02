"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _ReportLinksDelegatedFromIriTemplate = _interopRequireDefault(
  require("./ReportLinksDelegatedFromIriTemplate")
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
 * The ReportLinksDelegatedFrom model module.
 * @module model/ReportLinksDelegatedFrom
 */
var ReportLinksDelegatedFrom = /*#__PURE__*/ (function() {
  /**
     * Constructs a new "ReportLinksDelegatedFrom".
     * @alias module:model/ReportLinksDelegatedFrom
     * @class
    
     */
  function ReportLinksDelegatedFrom() {
    _classCallCheck(this, ReportLinksDelegatedFrom);

    this.href = null;
    this.iriTemplate = null;
    this.iriTemplateType = _ReportLinksDelegatedFromIriTemplate.default;
  }
  /**
   * Constructs a "ReportLinksDelegatedFrom" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportLinksDelegatedFrom } object Optional instance to populate.
   * @return { module:model/ReportLinksDelegatedFrom } The populated "ReportLinksDelegatedFrom" instance.
   */

  _createClass(
    ReportLinksDelegatedFrom,
    [
      {
        key: "getHref",

        /**
         * Gets The URI of the delegatedFrom associated to the given report.
         * @return { String }
         */
        value: function getHref() {
          return this.href;
        }
        /**
         * Sets The URI of the delegatedFrom associated to the given report.
         * @param { String } href The URI of the delegatedFrom associated to the given report.
         */
      },
      {
        key: "setHref",
        value: function setHref(href) {
          this.href = href;
        }
        /**
         * @return { module:model/ReportLinksDelegatedFromIriTemplate }
         */
      },
      {
        key: "getIriTemplate",
        value: function getIriTemplate() {
          return this.iriTemplate;
        }
        /**
         * @param { module:model/ReportLinksDelegatedFromIriTemplate } iriTemplate
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
            object = new ReportLinksDelegatedFrom();
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

  return ReportLinksDelegatedFrom;
})();

exports.default = ReportLinksDelegatedFrom;
