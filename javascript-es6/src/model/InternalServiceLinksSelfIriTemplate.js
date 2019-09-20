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
import InternalServiceLinksSelfIriTemplateMapping from "./InternalServiceLinksSelfIriTemplateMapping";

/**
 * The InternalServiceLinksSelfIriTemplate model module.
 * @module model/InternalServiceLinksSelfIriTemplate
 */
export default class InternalServiceLinksSelfIriTemplate {
  /**
     * Constructs a new "InternalServiceLinksSelfIriTemplate".
     * @alias module:model/InternalServiceLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = InternalServiceLinksSelfIriTemplateMapping;
  }

  /**
   * Constructs a "InternalServiceLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InternalServiceLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/InternalServiceLinksSelfIriTemplate } The populated "InternalServiceLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new InternalServiceLinksSelfIriTemplate();
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
   * @return { module:model/InternalServiceLinksSelfIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/InternalServiceLinksSelfIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
