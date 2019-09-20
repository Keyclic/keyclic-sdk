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
import CategoryLinksOrganizationIriTemplateMapping from "./CategoryLinksOrganizationIriTemplateMapping";

/**
 * The WebhookLinksOrganizationIriTemplate model module.
 * @module model/WebhookLinksOrganizationIriTemplate
 */
export default class WebhookLinksOrganizationIriTemplate {
  /**
     * Constructs a new "WebhookLinksOrganizationIriTemplate".
     * @alias module:model/WebhookLinksOrganizationIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = CategoryLinksOrganizationIriTemplateMapping;
  }

  /**
   * Constructs a "WebhookLinksOrganizationIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookLinksOrganizationIriTemplate } object Optional instance to populate.
   * @return { module:model/WebhookLinksOrganizationIriTemplate } The populated "WebhookLinksOrganizationIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new WebhookLinksOrganizationIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }

  /**
   * @return { module:model/CategoryLinksOrganizationIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/CategoryLinksOrganizationIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
