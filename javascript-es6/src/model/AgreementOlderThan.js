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
 * The AgreementOlderThan model module.
 * @module model/AgreementOlderThan
 */
export default class AgreementOlderThan {
  /**
     * Constructs a new "AgreementOlderThan".
     * @alias module:model/AgreementOlderThan
     * @class
    
     */
  constructor() {
    this.content = null;
  }

  /**
   * Constructs a "AgreementOlderThan" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/AgreementOlderThan } object Optional instance to populate.
   * @return { module:model/AgreementOlderThan } The populated "AgreementOlderThan" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new AgreementOlderThan();
    }

    if (data.hasOwnProperty("content")) {
      object.content = ApiClient.convertToType(data["content"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getContent() {
    return this.content;
  }

  /**
   * @param { String } content
   */
  setContent(content) {
    this.content = content;
  }
}