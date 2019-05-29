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
 * The DelegateData model module.
 * @module model/DelegateData
 */
export default class DelegateData {
  /**
     * Constructs a new "DelegateData".
     * @alias module:model/DelegateData
     * @class
    
     * @param report { String }
    
     * @param organization { String }
    
     */
  constructor(
    report,

    organization
  ) {
    this.report = report;
    this.organization = organization;
  }

  /**
   * Constructs a "DelegateData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegateData } object Optional instance to populate.
   * @return { module:model/DelegateData } The populated "DelegateData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegateData();
    }

    if (data.hasOwnProperty("report")) {
      object.report = ApiClient.convertToType(data["report"], "String");
    }
    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        "String"
      );
    }

    return object;
  }
}
