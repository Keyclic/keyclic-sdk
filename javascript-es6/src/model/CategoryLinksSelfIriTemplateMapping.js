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
 * The CategoryLinksSelfIriTemplateMapping model module.
 * @module model/CategoryLinksSelfIriTemplateMapping
 */
export default class CategoryLinksSelfIriTemplateMapping {
  /**
     * Constructs a new "CategoryLinksSelfIriTemplateMapping".
     * @alias module:model/CategoryLinksSelfIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.category = null;
  }

  /**
   * Constructs a "CategoryLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/CategoryLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/CategoryLinksSelfIriTemplateMapping } The populated "CategoryLinksSelfIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new CategoryLinksSelfIriTemplateMapping();
    }

    if (data.hasOwnProperty("category")) {
      object.category = ApiClient.convertToType(data["category"], "String");
    }

    return object;
  }
}
