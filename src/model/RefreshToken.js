/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 1.0
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


import ApiClient from '../ApiClient';


    

/**
 * The RefreshToken model module.
 * @module model/RefreshToken
 * @version 1.0
 */
export default class RefreshToken  {
    /**
     * Constructs a new "RefreshToken".
     * @alias module:model/RefreshToken
     * @class
    
     * @param refreshToken { String } 
    
     */
    constructor(
    
        refreshToken,
    
    ) {

        this.refreshToken = refreshToken;

    }

    /**
    * Constructs a "RefreshToken" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/RefreshToken } object Optional instance to populate.
    * @return { module:model/RefreshToken } The populated "RefreshToken" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new RefreshToken();
        }

        if (data.hasOwnProperty('refreshToken')) {
            object.refreshToken = ApiClient.convertToType(data['refreshToken'], 'String');
        }

        return object;
    }

    

}



