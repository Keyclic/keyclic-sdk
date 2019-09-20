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
 * The BusinessActivityLinksImageIriTemplate model module.
 * @module model/BusinessActivityLinksImageIriTemplate
 */
export default class BusinessActivityLinksImageIriTemplate {
  /**
     * Constructs a new "BusinessActivityLinksImageIriTemplate".
     * @alias module:model/BusinessActivityLinksImageIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = BusinessActivityLinksImageIriTemplateMapping;
  }

  /**
   * Constructs a "BusinessActivityLinksImageIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/BusinessActivityLinksImageIriTemplate } object Optional instance to populate.
   * @return { module:model/BusinessActivityLinksImageIriTemplate } The populated "BusinessActivityLinksImageIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new BusinessActivityLinksImageIriTemplate();
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
