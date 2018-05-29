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
 * The SuccessLoginCredentialsAdministratorOf model module.
 * @module model/SuccessLoginCredentialsAdministratorOf
 */
export default class SuccessLoginCredentialsAdministratorOf {
  /**
     * Constructs a new "SuccessLoginCredentialsAdministratorOf".
     * @alias module:model/SuccessLoginCredentialsAdministratorOf
     * @class

     */
  constructor (

  ) {
    this.id = null
    this.token = null
    this.type = null
  }

  /**
    * Constructs a "SuccessLoginCredentialsAdministratorOf" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/SuccessLoginCredentialsAdministratorOf } object Optional instance to populate.
    * @return { module:model/SuccessLoginCredentialsAdministratorOf } The populated "SuccessLoginCredentialsAdministratorOf" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new SuccessLoginCredentialsAdministratorOf()
    }

    if (data.hasOwnProperty('id')) {
      object.id = ApiClient.convertToType(data.id, 'String')
    }
    if (data.hasOwnProperty('token')) {
      object.token = ApiClient.convertToType(data.token, 'String')
    }
    if (data.hasOwnProperty('type')) {
      object.type = ApiClient.convertToType(data.type, 'String')
    }

    return object
  }
}
