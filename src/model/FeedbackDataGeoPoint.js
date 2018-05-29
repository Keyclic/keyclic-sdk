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

/**
 * The FeedbackDataGeoPoint model module.
 * @module model/FeedbackDataGeoPoint
 */
export default class FeedbackDataGeoPoint {
  /**
     * Constructs a new "FeedbackDataGeoPoint".
     * @alias module:model/FeedbackDataGeoPoint
     * @class

     */
  constructor (

  ) {
    this.latitude = null
    this.longitude = null
    this.srid = null
  }

  /**
    * Constructs a "FeedbackDataGeoPoint" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackDataGeoPoint } object Optional instance to populate.
    * @return { module:model/FeedbackDataGeoPoint } The populated "FeedbackDataGeoPoint" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new FeedbackDataGeoPoint()
    }

    if (data.hasOwnProperty('latitude')) {
      object.latitude = ApiClient.convertToType(data.latitude, 'Number')
    }
    if (data.hasOwnProperty('longitude')) {
      object.longitude = ApiClient.convertToType(data.longitude, 'Number')
    }
    if (data.hasOwnProperty('srid')) {
      object.srid = ApiClient.convertToType(data.srid, 'Number')
    }

    return object
  }
}
