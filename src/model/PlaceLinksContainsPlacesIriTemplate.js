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

import ApiClient from '../ApiClient'
import PlaceLinksContainsPlacesIriTemplateMapping from './PlaceLinksContainsPlacesIriTemplateMapping'

/**
 * The PlaceLinksContainsPlacesIriTemplate model module.
 * @module model/PlaceLinksContainsPlacesIriTemplate
 */
export default class PlaceLinksContainsPlacesIriTemplate {
  /**
     * Constructs a new "PlaceLinksContainsPlacesIriTemplate".
     * @alias module:model/PlaceLinksContainsPlacesIriTemplate
     * @class

     */
  constructor (

  ) {
    this.mapping = null

    this.mappingType = PlaceLinksContainsPlacesIriTemplateMapping
  }

  /**
    * Constructs a "PlaceLinksContainsPlacesIriTemplate" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlaceLinksContainsPlacesIriTemplate } object Optional instance to populate.
    * @return { module:model/PlaceLinksContainsPlacesIriTemplate } The populated "PlaceLinksContainsPlacesIriTemplate" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new PlaceLinksContainsPlacesIriTemplate()
    }

    if (data.hasOwnProperty('mapping')) {
      object.mapping = ApiClient.convertToType(data.mapping, object.mappingType)
    }

    return object
  }
}
