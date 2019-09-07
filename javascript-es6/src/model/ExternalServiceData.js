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
 * The ExternalServiceData model module.
 * @module model/ExternalServiceData
 */
export default class ExternalServiceData {
  /**
     * Constructs a new "ExternalServiceData".
     * @alias module:model/ExternalServiceData
     * @class
    
     * @param organization { String }
    
     * @param name { String }
    
     * @param provider { String }
    
     */
  constructor(
    organization,

    name,

    provider
  ) {
    this.organization = organization;
    this.name = name;
    this.description = null;
    this.provider = provider;
  }

  /**
   * Constructs a "ExternalServiceData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceData } object Optional instance to populate.
   * @return { module:model/ExternalServiceData } The populated "ExternalServiceData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ExternalServiceData();
    }

    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        "String"
      );
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("provider")) {
      object.provider = ApiClient.convertToType(data["provider"], "String");
    }

    return object;
  }
}
