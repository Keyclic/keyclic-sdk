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
 * The OccupantLinksPlaceIriTemplateMapping model module.
 * @module model/OccupantLinksPlaceIriTemplateMapping
 */
export default class OccupantLinksPlaceIriTemplateMapping {
  /**
     * Constructs a new "OccupantLinksPlaceIriTemplateMapping".
     * @alias module:model/OccupantLinksPlaceIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.place = null;
  }

  /**
   * Constructs a "OccupantLinksPlaceIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OccupantLinksPlaceIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/OccupantLinksPlaceIriTemplateMapping } The populated "OccupantLinksPlaceIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OccupantLinksPlaceIriTemplateMapping();
    }

    if (data.hasOwnProperty("place")) {
      object.place = ApiClient.convertToType(data["place"], "String");
    }

    return object;
  }
}
