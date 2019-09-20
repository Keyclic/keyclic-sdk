"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _ApiClient = _interopRequireDefault(require("../ApiClient"));

var _DelegationCollection = _interopRequireDefault(
  require("./DelegationCollection")
);

var _Pagination2 = _interopRequireDefault(require("./Pagination"));

var _PaginationLinks = _interopRequireDefault(require("./PaginationLinks"));

function _interopRequireDefault(obj) {
  return obj && obj.__esModule ? obj : { default: obj };
}

function _typeof(obj) {
  if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
    _typeof = function _typeof(obj) {
      return typeof obj;
    };
  } else {
    _typeof = function _typeof(obj) {
      return obj &&
        typeof Symbol === "function" &&
        obj.constructor === Symbol &&
        obj !== Symbol.prototype
        ? "symbol"
        : typeof obj;
    };
  }
  return _typeof(obj);
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

function _possibleConstructorReturn(self, call) {
  if (call && (_typeof(call) === "object" || typeof call === "function")) {
    return call;
  }
  return _assertThisInitialized(self);
}

function _assertThisInitialized(self) {
  if (self === void 0) {
    throw new ReferenceError(
      "this hasn't been initialised - super() hasn't been called"
    );
  }
  return self;
}

function _get(target, property, receiver) {
  if (typeof Reflect !== "undefined" && Reflect.get) {
    _get = Reflect.get;
  } else {
    _get = function _get(target, property, receiver) {
      var base = _superPropBase(target, property);
      if (!base) return;
      var desc = Object.getOwnPropertyDescriptor(base, property);
      if (desc.get) {
        return desc.get.call(receiver);
      }
      return desc.value;
    };
  }
  return _get(target, property, receiver || target);
}

function _superPropBase(object, property) {
  while (!Object.prototype.hasOwnProperty.call(object, property)) {
    object = _getPrototypeOf(object);
    if (object === null) break;
  }
  return object;
}

function _getPrototypeOf(o) {
  _getPrototypeOf = Object.setPrototypeOf
    ? Object.getPrototypeOf
    : function _getPrototypeOf(o) {
        return o.__proto__ || Object.getPrototypeOf(o);
      };
  return _getPrototypeOf(o);
}

function _inherits(subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function");
  }
  subClass.prototype = Object.create(superClass && superClass.prototype, {
    constructor: { value: subClass, writable: true, configurable: true }
  });
  if (superClass) _setPrototypeOf(subClass, superClass);
}

function _setPrototypeOf(o, p) {
  _setPrototypeOf =
    Object.setPrototypeOf ||
    function _setPrototypeOf(o, p) {
      o.__proto__ = p;
      return o;
    };
  return _setPrototypeOf(o, p);
}

/**
 * The DelegationPagination model module.
 * @module model/DelegationPagination
 */
var DelegationPagination =
  /*#__PURE__*/
  (function(_Pagination) {
    _inherits(DelegationPagination, _Pagination);

    /**
   * Constructs a new "DelegationPagination".
   * @alias module:model/DelegationPagination
   * @class
  
   */
    function DelegationPagination() {
      var _this;

      _classCallCheck(this, DelegationPagination);

      _this = _possibleConstructorReturn(
        this,
        _getPrototypeOf(DelegationPagination).call(this)
      );
      _this.embedded = null;
      _this.embeddedType = _DelegationCollection.default;
      return _this;
    }
    /**
     * Constructs a "DelegationPagination" from a plain JavaScript object.
     * @param { object } data The plain JavaScript object bearing properties of interest.
     * @param { module:model/DelegationPagination } object Optional instance to populate.
     * @return { module:model/DelegationPagination } The populated "DelegationPagination" instance.
     */

    _createClass(
      DelegationPagination,
      [
        {
          key: "getEmbedded",

          /**
           * @return { module:model/DelegationCollection }
           */
          value: function getEmbedded() {
            return this.embedded;
          }
          /**
           * @param { module:model/DelegationCollection } embedded
           */
        },
        {
          key: "setEmbedded",
          value: function setEmbedded(embedded) {
            this.embedded = embedded;
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
              object = new DelegationPagination();
            }

            object = _get(
              _getPrototypeOf(DelegationPagination),
              "constructFromData",
              this
            ).call(this, data, object);

            if (data.hasOwnProperty("_embedded")) {
              object.embedded = _ApiClient.default.convertToType(
                data["_embedded"],
                object.embeddedType
              );
            }

            return object;
          }
        }
      ]
    );

    return DelegationPagination;
  })(_Pagination2.default);

exports.default = DelegationPagination;
