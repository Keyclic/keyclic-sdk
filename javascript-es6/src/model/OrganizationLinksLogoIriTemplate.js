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
 * The OrganizationLinksLogoIriTemplate model module.
 * @module model/OrganizationLinksLogoIriTemplate
 */
export default class OrganizationLinksLogoIriTemplate {
  /**
     * Constructs a new "OrganizationLinksLogoIriTemplate".
     * @alias module:model/OrganizationLinksLogoIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = CategoryLinksOrganizationIriTemplateMapping;
  }

  /**
   * Constructs a "OrganizationLinksLogoIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OrganizationLinksLogoIriTemplate } object Optional instance to populate.
   * @return { module:model/OrganizationLinksLogoIriTemplate } The populated "OrganizationLinksLogoIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OrganizationLinksLogoIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }
}
