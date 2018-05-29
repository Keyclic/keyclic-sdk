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


import ApiClient from '../ApiClient';


    

/**
 * The FacebookConnectData model module.
 * @module model/FacebookConnectData
 */
export default class FacebookConnectData  {
    /**
     * Constructs a new "FacebookConnectData".
     * @alias module:model/FacebookConnectData
     * @class
    
     * @param accessToken { String }
    
     */
    constructor(
    
        accessToken,
    
    ) {

        this.accessToken = accessToken;

    }

    /**
    * Constructs a "FacebookConnectData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FacebookConnectData } object Optional instance to populate.
    * @return { module:model/FacebookConnectData } The populated "FacebookConnectData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FacebookConnectData();
        }

        if (data.hasOwnProperty('accessToken')) {
            object.accessToken = ApiClient.convertToType(data.accessToken, 'String');
        }

        return object;
    }

    

}



