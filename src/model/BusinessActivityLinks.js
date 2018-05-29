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
import BusinessActivityLinksSelf from './BusinessActivityLinksSelf';


    

/**
 * The BusinessActivityLinks model module.
 * @module model/BusinessActivityLinks
 */
export default class BusinessActivityLinks  {
    /**
     * Constructs a new "BusinessActivityLinks".
     * @alias module:model/BusinessActivityLinks
     * @class
    
     */
    constructor(
    
    ) {

        this.self = null;

        this.selfType = BusinessActivityLinksSelf;
    }

    /**
    * Constructs a "BusinessActivityLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/BusinessActivityLinks } object Optional instance to populate.
    * @return { module:model/BusinessActivityLinks } The populated "BusinessActivityLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new BusinessActivityLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }

        return object;
    }

    

}



