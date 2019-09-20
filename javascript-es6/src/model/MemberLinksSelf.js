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
import MemberLinksSelfIriTemplate from "./MemberLinksSelfIriTemplate";

/**
 * The MemberLinksSelf model module.
 * @module model/MemberLinksSelf
 */
export default class MemberLinksSelf {
  /**
     * Constructs a new "MemberLinksSelf".
     * @alias module:model/MemberLinksSelf
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = MemberLinksSelfIriTemplate;
  }

  /**
   * Constructs a "MemberLinksSelf" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberLinksSelf } object Optional instance to populate.
   * @return { module:model/MemberLinksSelf } The populated "MemberLinksSelf" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new MemberLinksSelf();
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

  /**
   * Gets The URI of the self associated to the given member.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the self associated to the given member.
   * @param { String } href The URI of the self associated to the given member.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/MemberLinksSelfIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/MemberLinksSelfIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
