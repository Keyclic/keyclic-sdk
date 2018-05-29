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
 * The DeviceData model module.
 * @module model/DeviceData
 */
export default class DeviceData {
  /**
     * Constructs a new "DeviceData".
     * @alias module:model/DeviceData
     * @class

     * @param token { String }

     */
  constructor (

    token

  ) {
    this.token = token
    this.platform = null
  }

  /**
    * Constructs a "DeviceData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/DeviceData } object Optional instance to populate.
    * @return { module:model/DeviceData } The populated "DeviceData" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new DeviceData()
    }

    if (data.hasOwnProperty('token')) {
      object.token = ApiClient.convertToType(data.token, 'String')
    }
    if (data.hasOwnProperty('platform')) {
      object.platform = ApiClient.convertToType(data.platform, 'String')
    }

    return object
  }
}
