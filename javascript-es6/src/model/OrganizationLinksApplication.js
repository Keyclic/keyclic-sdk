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
import OrganizationLinksApplicationIriTemplate from "./OrganizationLinksApplicationIriTemplate";

/**
 * The OrganizationLinksApplication model module.
 * @module model/OrganizationLinksApplication
 */
export default class OrganizationLinksApplication {
  /**
     * Constructs a new "OrganizationLinksApplication".
     * @alias module:model/OrganizationLinksApplication
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = OrganizationLinksApplicationIriTemplate;
  }

  /**
   * Constructs a "OrganizationLinksApplication" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OrganizationLinksApplication } object Optional instance to populate.
   * @return { module:model/OrganizationLinksApplication } The populated "OrganizationLinksApplication" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OrganizationLinksApplication();
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
   * Gets The URI of the application associated to the given organization.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the application associated to the given organization.
   * @param { String } href The URI of the application associated to the given organization.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/OrganizationLinksApplicationIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/OrganizationLinksApplicationIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
