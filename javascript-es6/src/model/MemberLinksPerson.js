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
import DelegationLinksCreatedByIriTemplate from "./DelegationLinksCreatedByIriTemplate";

/**
 * The MemberLinksPerson model module.
 * @module model/MemberLinksPerson
 */
export default class MemberLinksPerson {
  /**
     * Constructs a new "MemberLinksPerson".
     * @alias module:model/MemberLinksPerson
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = DelegationLinksCreatedByIriTemplate;
  }

  /**
   * Constructs a "MemberLinksPerson" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberLinksPerson } object Optional instance to populate.
   * @return { module:model/MemberLinksPerson } The populated "MemberLinksPerson" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new MemberLinksPerson();
    }

    if (data.hasOwnProperty("href")) {
      object.href = ApiClient.convertToType(data["href"], "String");
    }
    if (data.hasOwnProperty("iriTemplate")) {
      object.iriTemplate = ApiClient.convertToType(
        data["iriTemplate"],
        object.iriTemplateType
      );
    }

    return object;
  }
}
