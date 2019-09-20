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
import OccupantLinksPlaceIriTemplateMapping from "./OccupantLinksPlaceIriTemplateMapping";

/**
 * The OccupantLinksPlaceIriTemplate model module.
 * @module model/OccupantLinksPlaceIriTemplate
 */
export default class OccupantLinksPlaceIriTemplate {
  /**
     * Constructs a new "OccupantLinksPlaceIriTemplate".
     * @alias module:model/OccupantLinksPlaceIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = OccupantLinksPlaceIriTemplateMapping;
  }

  /**
   * Constructs a "OccupantLinksPlaceIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OccupantLinksPlaceIriTemplate } object Optional instance to populate.
   * @return { module:model/OccupantLinksPlaceIriTemplate } The populated "OccupantLinksPlaceIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OccupantLinksPlaceIriTemplate();
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
   * @return { module:model/OccupantLinksPlaceIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/OccupantLinksPlaceIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
