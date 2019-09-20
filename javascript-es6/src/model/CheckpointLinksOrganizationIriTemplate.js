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
 * The CheckpointLinksOrganizationIriTemplate model module.
 * @module model/CheckpointLinksOrganizationIriTemplate
 */
export default class CheckpointLinksOrganizationIriTemplate {
  /**
     * Constructs a new "CheckpointLinksOrganizationIriTemplate".
     * @alias module:model/CheckpointLinksOrganizationIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = CategoryLinksOrganizationIriTemplateMapping;
  }

  /**
   * Constructs a "CheckpointLinksOrganizationIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CheckpointLinksOrganizationIriTemplate } object Optional instance to populate.
   * @return { module:model/CheckpointLinksOrganizationIriTemplate } The populated "CheckpointLinksOrganizationIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new CheckpointLinksOrganizationIriTemplate();
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
