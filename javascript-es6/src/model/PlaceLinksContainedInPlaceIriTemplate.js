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
 * The PlaceLinksContainedInPlaceIriTemplate model module.
 * @module model/PlaceLinksContainedInPlaceIriTemplate
 */
export default class PlaceLinksContainedInPlaceIriTemplate {
  /**
     * Constructs a new "PlaceLinksContainedInPlaceIriTemplate".
     * @alias module:model/PlaceLinksContainedInPlaceIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = OccupantLinksPlaceIriTemplateMapping;
  }

  /**
   * Constructs a "PlaceLinksContainedInPlaceIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceLinksContainedInPlaceIriTemplate } object Optional instance to populate.
   * @return { module:model/PlaceLinksContainedInPlaceIriTemplate } The populated "PlaceLinksContainedInPlaceIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceLinksContainedInPlaceIriTemplate();
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
