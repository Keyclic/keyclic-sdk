/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 *  <techies@keyclic.com>
 *
 * This class is auto generated by the swagger code generator program with templates of Keyclic.
 * https://github.com/swagger-api/swagger-codegen.git
 * https://github.com/Keyclic/app-sdk.git
 * Do not edit the class manually.
 */


import ApiClient from '../ApiClient';
import SuccessLoginCredentials from './SuccessLoginCredentials';




/**
 * The SuccessLogin model module.
 * @module model/SuccessLogin
 * @version 1.19.1
 */
export default class SuccessLogin  {
    /**
     * Constructs a new "SuccessLogin".
     * @alias module:model/SuccessLogin
     * @class

     */
    constructor(

    ) {

        this.accessToken = null;
        this.credentials = null;
        this.tokenType = 'Bearer';

        this.credentialsType = SuccessLoginCredentials;
    }

    /**
    * Constructs a "SuccessLogin" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/SuccessLogin } object Optional instance to populate.
    * @return { module:model/SuccessLogin } The populated "SuccessLogin" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new SuccessLogin();
        }

        if (data.hasOwnProperty('accessToken')) {
            object.accessToken = ApiClient.convertToType(data.accessToken, 'String');
        }
        if (data.hasOwnProperty('credentials')) {
            object.credentials = ApiClient.convertToType(data.credentials, object.credentialsType);
        }
        if (data.hasOwnProperty('tokenType')) {
            object.tokenType = ApiClient.convertToType(data.tokenType, 'String');
        }

        return object;
    }



}



