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
 * The ApplicationAgreementOlderThan model module.
 * @module model/ApplicationAgreementOlderThan
 */
var ApplicationAgreementOlderThan =
  /*#__PURE__*/
  (function() {
    /**
   * Constructs a new "ApplicationAgreementOlderThan".
   * @alias module:model/ApplicationAgreementOlderThan
   * @class
  
   */
    function ApplicationAgreementOlderThan() {
      _classCallCheck(this, ApplicationAgreementOlderThan);

      this.content = null;
    }
    /**
     * Constructs a "ApplicationAgreementOlderThan" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/ApplicationAgreementOlderThan } object Optional instance to populate.
     * @return { module:model/ApplicationAgreementOlderThan } The populated "ApplicationAgreementOlderThan" instance.
     */

    _createClass(
      ApplicationAgreementOlderThan,
      [
        {
          key: "getContent",

          /**
           * @return { String }
           */
          value: function getContent() {
            return this.content;
          }
          /**
           * @param { String } content
           */
        },
        {
          key: "setContent",
          value: function setContent(content) {
            this.content = content;
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
              object = new ApplicationAgreementOlderThan();
            }

            if (data.hasOwnProperty("content")) {
              object.content = _ApiClient.default.convertToType(
                data["content"],
                "String"
              );
            }

            return object;
          }
        }
      ]
    );

    return ApplicationAgreementOlderThan;
  })();

exports.default = ApplicationAgreementOlderThan;
