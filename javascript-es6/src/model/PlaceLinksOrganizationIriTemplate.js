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
 * The PlaceLinksOrganizationIriTemplate model module.
 * @module model/PlaceLinksOrganizationIriTemplate
 */
export default class PlaceLinksOrganizationIriTemplate {
  /**
     * Constructs a new "PlaceLinksOrganizationIriTemplate".
     * @alias module:model/PlaceLinksOrganizationIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = CategoryLinksOrganizationIriTemplateMapping;
  }

  /**
   * Constructs a "PlaceLinksOrganizationIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceLinksOrganizationIriTemplate } object Optional instance to populate.
   * @return { module:model/PlaceLinksOrganizationIriTemplate } The populated "PlaceLinksOrganizationIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceLinksOrganizationIriTemplate();
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
