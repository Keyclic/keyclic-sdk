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
 * The Collection model module.
 * @module model/Collection
 */
export default class Collection {
  /**
     * Constructs a new "Collection".
     * @alias module:model/Collection
     * @class

     */
  constructor (

  ) {
    this.items = []
  }

  /**
    * Constructs a "Collection" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Collection } object Optional instance to populate.
    * @return { module:model/Collection } The populated "Collection" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new Collection()
    }

    if (data.hasOwnProperty('items')) {
      object.items = ApiClient.convertToType(data.items, '[\'Object\']')
    }

    return object
  }
}
