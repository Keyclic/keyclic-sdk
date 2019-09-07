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
 * The PasswordChangeData model module.
 * @module model/PasswordChangeData
 */
export default class PasswordChangeData {
  /**
     * Constructs a new "PasswordChangeData".
     * @alias module:model/PasswordChangeData
     * @class
    
     * @param password { String }
    
     */
  constructor(password) {
    this.password = password;
  }

  /**
   * Constructs a "PasswordChangeData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PasswordChangeData } object Optional instance to populate.
   * @return { module:model/PasswordChangeData } The populated "PasswordChangeData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PasswordChangeData();
    }

    if (data.hasOwnProperty("password")) {
      object.password = ApiClient.convertToType(data["password"], "String");
    }

    return object;
  }
}