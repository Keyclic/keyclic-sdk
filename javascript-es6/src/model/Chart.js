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
 * The Chart model module.
 * @module model/Chart
 */
export default class Chart {
  /**
     * Constructs a new "Chart".
     * @alias module:model/Chart
     * @class
    
     */
  constructor() {
    this.data = [];
    this.labels = [];
  }

  /**
   * Constructs a "Chart" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Chart } object Optional instance to populate.
   * @return { module:model/Chart } The populated "Chart" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Chart();
    }

    if (data.hasOwnProperty("data")) {
      object.data = ApiClient.convertToType(data["data"], "['Number']");
    }
    if (data.hasOwnProperty("labels")) {
      object.labels = ApiClient.convertToType(data["labels"], "['String']");
    }

    return object;
  }
}
