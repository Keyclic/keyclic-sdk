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
import WebhookLinksOrganizationIriTemplate from "./WebhookLinksOrganizationIriTemplate";

/**
 * The WebhookLinksOrganization model module.
 * @module model/WebhookLinksOrganization
 */
export default class WebhookLinksOrganization {
  /**
     * Constructs a new "WebhookLinksOrganization".
     * @alias module:model/WebhookLinksOrganization
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = WebhookLinksOrganizationIriTemplate;
  }

  /**
   * Constructs a "WebhookLinksOrganization" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookLinksOrganization } object Optional instance to populate.
   * @return { module:model/WebhookLinksOrganization } The populated "WebhookLinksOrganization" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new WebhookLinksOrganization();
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
   * Gets The URI of the organization associated to the given webhook.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the organization associated to the given webhook.
   * @param { String } href The URI of the organization associated to the given webhook.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/WebhookLinksOrganizationIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/WebhookLinksOrganizationIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
