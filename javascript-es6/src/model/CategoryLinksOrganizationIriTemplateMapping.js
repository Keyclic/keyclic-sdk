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

/**
 * The CategoryLinksOrganizationIriTemplateMapping model module.
 * @module model/CategoryLinksOrganizationIriTemplateMapping
 */
export default class CategoryLinksOrganizationIriTemplateMapping {
  /**
     * Constructs a new "CategoryLinksOrganizationIriTemplateMapping".
     * @alias module:model/CategoryLinksOrganizationIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.organization = null;
  }

  /**
   * Constructs a "CategoryLinksOrganizationIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CategoryLinksOrganizationIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/CategoryLinksOrganizationIriTemplateMapping } The populated "CategoryLinksOrganizationIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new CategoryLinksOrganizationIriTemplateMapping();
    }

    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        "String"
      );
    }

    return object;
  }
}
