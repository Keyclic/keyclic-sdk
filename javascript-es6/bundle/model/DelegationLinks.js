"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationLinksCreatedBy = _interopRequireDefault(
  require("./DelegationLinksCreatedBy")
);

var _DelegationLinksFrom = _interopRequireDefault(
  require("./DelegationLinksFrom")
);

var _DelegationLinksReport = _interopRequireDefault(
  require("./DelegationLinksReport")
);

var _DelegationLinksSelf = _interopRequireDefault(
  require("./DelegationLinksSelf")
);

var _DelegationLinksTo = _interopRequireDefault(require("./DelegationLinksTo"));

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
 * The DelegationLinks model module.
 * @module model/DelegationLinks
 */
var DelegationLinks =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "DelegationLinks".
   * @alias module:model/DelegationLinks
   * @class
  
   */
    function DelegationLinks() {
      _classCallCheck(this, DelegationLinks);

      this.createdBy = null;
      this.from = null;
      this.report = null;
      this.self = null;
      this.to = null;
      this.createdByType = _DelegationLinksCreatedBy.default;
      this.fromType = _DelegationLinksFrom.default;
      this.reportType = _DelegationLinksReport.default;
      this.selfType = _DelegationLinksSelf.default;
      this.toType = _DelegationLinksTo.default;
    }
    /**
     * Constructs a "DelegationLinks" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationLinks } object Optional instance to populate.
     * @return { module:model/DelegationLinks } The populated "DelegationLinks" instance.
     */

    _createClass(DelegationLinks, null, [
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
            object = new DelegationLinks();
          }

          if (data.hasOwnProperty("createdBy")) {
            object.createdBy = _ApiClient.default.convertToType(
              data["createdBy"],
              object.createdByType
            );
          }

          if (data.hasOwnProperty("from")) {
            object.from = _ApiClient.default.convertToType(
              data["from"],
              object.fromType
            );
          }

          if (data.hasOwnProperty("report")) {
            object.report = _ApiClient.default.convertToType(
              data["report"],
              object.reportType
            );
          }

          if (data.hasOwnProperty("self")) {
            object.self = _ApiClient.default.convertToType(
              data["self"],
              object.selfType
            );
          }

          if (data.hasOwnProperty("to")) {
            object.to = _ApiClient.default.convertToType(
              data["to"],
              object.toType
            );
          }

          return object;
        }
      }
    ]);

    return DelegationLinks;
  })();

exports.default = DelegationLinks;
