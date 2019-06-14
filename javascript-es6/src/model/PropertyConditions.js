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
import Condition from "./Condition";

/**
 * The PropertyConditions model module.
 * @module model/PropertyConditions
 */
export default class PropertyConditions {
  /**
     * Constructs a new "PropertyConditions".
     * @alias module:model/PropertyConditions
     * @class
    
     */
  constructor() {
    this.allOf = [];

    this.allOfType = Condition;
  }

  /**
   * Constructs a "PropertyConditions" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PropertyConditions } object Optional instance to populate.
   * @return { module:model/PropertyConditions } The populated "PropertyConditions" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PropertyConditions();
    }

    if (data.hasOwnProperty("allOf")) {
      object.allOf = ApiClient.convertToType(data["allOf"], [object.allOfType]);
    }

    return object;
  }
}