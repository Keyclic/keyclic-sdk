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
import BusinessActivity from "./BusinessActivity";

/**
 * The BusinessActivityCollection model module.
 * @module model/BusinessActivityCollection
 */
export default class BusinessActivityCollection {
  /**
     * Constructs a new "BusinessActivityCollection".
     * @alias module:model/BusinessActivityCollection
     * @class
    
     */
  constructor() {
    this.items = [];

    this.itemsType = BusinessActivity;
  }

  /**
   * Constructs a "BusinessActivityCollection" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/BusinessActivityCollection } object Optional instance to populate.
   * @return { module:model/BusinessActivityCollection } The populated "BusinessActivityCollection" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new BusinessActivityCollection();
    }

    if (data.hasOwnProperty("items")) {
      object.items = ApiClient.convertToType(data["items"], [object.itemsType]);
    }

    return object;
  }
}