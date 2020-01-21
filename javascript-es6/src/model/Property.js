/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 *  <techies@keyclic.com>
 *
 * This class is auto generated by the swagger code generator program with proper templates of Keyclic.
 * https://github.com/swagger-api/swagger-codegen.git
 * https://github.com/Keyclic/app-sdk.git
 * Do not edit the class manually.
 */

import ApiClient from "../ApiClient";
import PropertyConditionList from "./PropertyConditionList";
import PropertyItems from "./PropertyItems";

/**
 * The Property model module.
 * @module model/Property
 */
export default class Property {
  /**
     * Constructs a new "Property".
     * @alias module:model/Property
     * @class
    
     */
  constructor() {
    this.conditions = null;
    this._default = null;
    this.description = null;
    this._enum = [];
    this.format = null;
    this.id = null;
    this.items = null;
    this.maxItems = null;
    this.minItems = null;
    this.propertyOrder = null;
    this.title = null;
    this.type = null;

    this.conditionsType = PropertyConditionList;
    this.itemsType = PropertyItems;
  }

  /**
   * Constructs a "Property" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Property } object Optional instance to populate.
   * @return { module:model/Property } The populated "Property" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Property();
    }

    if (data.hasOwnProperty("conditions")) {
      object.conditions = ApiClient.convertToType(
        data["conditions"],
        object.conditionsType
      );
    }
    if (data.hasOwnProperty("default")) {
      object._default = ApiClient.convertToType(data["default"], "String");
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("enum")) {
      object._enum = ApiClient.convertToType(data["enum"], "['String']");
    }
    if (data.hasOwnProperty("format")) {
      object.format = ApiClient.convertToType(data["format"], "String");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("items")) {
      object.items = ApiClient.convertToType(data["items"], object.itemsType);
    }
    if (data.hasOwnProperty("maxItems")) {
      object.maxItems = ApiClient.convertToType(data["maxItems"], "Number");
    }
    if (data.hasOwnProperty("minItems")) {
      object.minItems = ApiClient.convertToType(data["minItems"], "Number");
    }
    if (data.hasOwnProperty("propertyOrder")) {
      object.propertyOrder = ApiClient.convertToType(
        data["propertyOrder"],
        "Number"
      );
    }
    if (data.hasOwnProperty("title")) {
      object.title = ApiClient.convertToType(data["title"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }

  /**
   * @return { module:model/PropertyConditionList }
   */
  getConditions() {
    return this.conditions;
  }

  /**
   * @param { module:model/PropertyConditionList } conditions
   */
  setConditions(conditions) {
    this.conditions = conditions;
  }
  /**
   * @return { String }
   */
  getDefault() {
    return this._default;
  }

  /**
   * @param { String } _default
   */
  setDefault(_default) {
    this._default = _default;
  }
  /**
   * @return { String }
   */
  getDescription() {
    return this.description;
  }

  /**
   * @param { String } description
   */
  setDescription(description) {
    this.description = description;
  }
  /**
   * @return { Array.<String> }
   */
  getEnum() {
    return this._enum;
  }

  /**
   * @param { Array.<String> } _enum
   */
  setEnum(_enum) {
    this._enum = _enum;
  }
  /**
   * @return { String }
   */
  getFormat() {
    return this.format;
  }

  /**
   * @param { String } format
   */
  setFormat(format) {
    this.format = format;
  }
  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { module:model/PropertyItems }
   */
  getItems() {
    return this.items;
  }

  /**
   * @param { module:model/PropertyItems } items
   */
  setItems(items) {
    this.items = items;
  }
  /**
   * @return { Number }
   */
  getMaxItems() {
    return this.maxItems;
  }

  /**
   * @param { Number } maxItems
   */
  setMaxItems(maxItems) {
    this.maxItems = maxItems;
  }
  /**
   * @return { Number }
   */
  getMinItems() {
    return this.minItems;
  }

  /**
   * @param { Number } minItems
   */
  setMinItems(minItems) {
    this.minItems = minItems;
  }
  /**
   * @return { Number }
   */
  getPropertyOrder() {
    return this.propertyOrder;
  }

  /**
   * @param { Number } propertyOrder
   */
  setPropertyOrder(propertyOrder) {
    this.propertyOrder = propertyOrder;
  }
  /**
   * @return { String }
   */
  getTitle() {
    return this.title;
  }

  /**
   * @param { String } title
   */
  setTitle(title) {
    this.title = title;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }
}
