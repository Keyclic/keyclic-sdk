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

/**
 * The Choice model module.
 * @module model/Choice
 */
export default class Choice {
  /**
     * Constructs a new "Choice".
     * @alias module:model/Choice
     * @class
    
     */
  constructor() {
    this.type = null;
    this._enum = [];
    this.description = null;
    this.format = null;
    this.maxItems = null;
    this.minItems = null;
    this._default = null;
    this.propertyOrder = null;
    this.title = null;
  }

  /**
   * Constructs a "Choice" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Choice } object Optional instance to populate.
   * @return { module:model/Choice } The populated "Choice" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Choice();
    }

    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("enum")) {
      object._enum = ApiClient.convertToType(data["enum"], "['String']");
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("format")) {
      object.format = ApiClient.convertToType(data["format"], "String");
    }
    if (data.hasOwnProperty("maxItems")) {
      object.maxItems = ApiClient.convertToType(data["maxItems"], "Number");
    }
    if (data.hasOwnProperty("minItems")) {
      object.minItems = ApiClient.convertToType(data["minItems"], "Number");
    }
    if (data.hasOwnProperty("default")) {
      object._default = ApiClient.convertToType(data["default"], "String");
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

    return object;
  }
}
