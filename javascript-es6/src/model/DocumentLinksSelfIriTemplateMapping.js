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
 * The DocumentLinksSelfIriTemplateMapping model module.
 * @module model/DocumentLinksSelfIriTemplateMapping
 */
export default class DocumentLinksSelfIriTemplateMapping {
  /**
     * Constructs a new "DocumentLinksSelfIriTemplateMapping".
     * @alias module:model/DocumentLinksSelfIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.document = null;
  }

  /**
   * Constructs a "DocumentLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DocumentLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/DocumentLinksSelfIriTemplateMapping } The populated "DocumentLinksSelfIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DocumentLinksSelfIriTemplateMapping();
    }

    if (data.hasOwnProperty("document")) {
      object.document = ApiClient.convertToType(data["document"], "String");
    }

    return object;
  }
}
