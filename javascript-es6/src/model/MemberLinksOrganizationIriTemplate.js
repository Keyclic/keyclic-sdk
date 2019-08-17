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
 * The MemberLinksOrganizationIriTemplate model module.
 * @module model/MemberLinksOrganizationIriTemplate
 */
export default class MemberLinksOrganizationIriTemplate {
  /**
     * Constructs a new "MemberLinksOrganizationIriTemplate".
     * @alias module:model/MemberLinksOrganizationIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = CategoryLinksOrganizationIriTemplateMapping;
  }

  /**
   * Constructs a "MemberLinksOrganizationIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/MemberLinksOrganizationIriTemplate } object Optional instance to populate.
   * @return { module:model/MemberLinksOrganizationIriTemplate } The populated "MemberLinksOrganizationIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new MemberLinksOrganizationIriTemplate();
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
