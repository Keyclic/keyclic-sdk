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
 * The PublicationLinksSelfIriTemplateMapping model module.
 * @module model/PublicationLinksSelfIriTemplateMapping
 */
export default class PublicationLinksSelfIriTemplateMapping {
  /**
     * Constructs a new "PublicationLinksSelfIriTemplateMapping".
     * @alias module:model/PublicationLinksSelfIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.publication = null;
  }

  /**
   * Constructs a "PublicationLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PublicationLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/PublicationLinksSelfIriTemplateMapping } The populated "PublicationLinksSelfIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PublicationLinksSelfIriTemplateMapping();
    }

    if (data.hasOwnProperty("publication")) {
      object.publication = ApiClient.convertToType(
        data["publication"],
        "String"
      );
    }

    return object;
  }
}
