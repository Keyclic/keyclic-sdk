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
 * The Condition model module.
 * @module model/Condition
 */
export default class Condition {
  /**
     * Constructs a new "Condition".
     * @alias module:model/Condition
     * @class
    
     */
  constructor() {
    this.operator = null;
    this.path = null;
    this.value = [];
  }

  /**
   * Constructs a "Condition" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Condition } object Optional instance to populate.
   * @return { module:model/Condition } The populated "Condition" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Condition();
    }

    if (data.hasOwnProperty("operator")) {
      object.operator = ApiClient.convertToType(data["operator"], "String");
    }
    if (data.hasOwnProperty("path")) {
      object.path = ApiClient.convertToType(data["path"], "String");
    }
    if (data.hasOwnProperty("value")) {
      object.value = ApiClient.convertToType(data["value"], "['String']");
    }

    return object;
  }
}
