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
import BusinessActivityLinksImageIriTemplateMapping from "./BusinessActivityLinksImageIriTemplateMapping";

/**
 * The OrganizationLinksBusinessActivityIriTemplate model module.
 * @module model/OrganizationLinksBusinessActivityIriTemplate
 */
export default class OrganizationLinksBusinessActivityIriTemplate {
  /**
     * Constructs a new "OrganizationLinksBusinessActivityIriTemplate".
     * @alias module:model/OrganizationLinksBusinessActivityIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = BusinessActivityLinksImageIriTemplateMapping;
  }

  /**
   * Constructs a "OrganizationLinksBusinessActivityIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OrganizationLinksBusinessActivityIriTemplate } object Optional instance to populate.
   * @return { module:model/OrganizationLinksBusinessActivityIriTemplate } The populated "OrganizationLinksBusinessActivityIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OrganizationLinksBusinessActivityIriTemplate();
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
   * @return { module:model/BusinessActivityLinksImageIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/BusinessActivityLinksImageIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
