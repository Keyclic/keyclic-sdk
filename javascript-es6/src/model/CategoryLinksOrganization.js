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
import CategoryLinksOrganizationIriTemplate from "./CategoryLinksOrganizationIriTemplate";

/**
 * The CategoryLinksOrganization model module.
 * @module model/CategoryLinksOrganization
 */
export default class CategoryLinksOrganization {
  /**
     * Constructs a new "CategoryLinksOrganization".
     * @alias module:model/CategoryLinksOrganization
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = CategoryLinksOrganizationIriTemplate;
  }

  /**
   * Constructs a "CategoryLinksOrganization" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CategoryLinksOrganization } object Optional instance to populate.
   * @return { module:model/CategoryLinksOrganization } The populated "CategoryLinksOrganization" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new CategoryLinksOrganization();
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
   * Gets The URI of the organization associated to the given category.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the organization associated to the given category.
   * @param { String } href The URI of the organization associated to the given category.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/CategoryLinksOrganizationIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/CategoryLinksOrganizationIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
