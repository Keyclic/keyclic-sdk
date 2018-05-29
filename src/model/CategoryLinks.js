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
import CategoryLinksOrganization from './CategoryLinksOrganization';
import CategoryLinksSelf from './CategoryLinksSelf';


    

/**
 * The CategoryLinks model module.
 * @module model/CategoryLinks
 */
export default class CategoryLinks  {
    /**
     * Constructs a new "CategoryLinks".
     * @alias module:model/CategoryLinks
     * @class
    
     */
    constructor(
    
    ) {

        this.self = null;
        this.organization = null;

        this.selfType = CategoryLinksSelf;
        this.organizationType = CategoryLinksOrganization;
    }

    /**
    * Constructs a "CategoryLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/CategoryLinks } object Optional instance to populate.
    * @return { module:model/CategoryLinks } The populated "CategoryLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new CategoryLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }
        if (data.hasOwnProperty('organization')) {
            object.organization = ApiClient.convertToType(data.organization, object.organizationType);
        }

        return object;
    }

    

}



