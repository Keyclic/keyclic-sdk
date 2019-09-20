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
import DelegationLinksServiceIriTemplateMapping from "./DelegationLinksServiceIriTemplateMapping";

/**
 * The ExternalServiceLinksSelfIriTemplate model module.
 * @module model/ExternalServiceLinksSelfIriTemplate
 */
export default class ExternalServiceLinksSelfIriTemplate {
  /**
     * Constructs a new "ExternalServiceLinksSelfIriTemplate".
     * @alias module:model/ExternalServiceLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = DelegationLinksServiceIriTemplateMapping;
  }

  /**
   * Constructs a "ExternalServiceLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/ExternalServiceLinksSelfIriTemplate } The populated "ExternalServiceLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ExternalServiceLinksSelfIriTemplate();
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
   * @return { module:model/DelegationLinksServiceIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/DelegationLinksServiceIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
