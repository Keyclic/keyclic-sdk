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
import CategoryLinksOrganizationIriTemplate from './CategoryLinksOrganizationIriTemplate';


    

/**
 * The PersonLinksMemberOf model module.
 * @module model/PersonLinksMemberOf
 */
export default class PersonLinksMemberOf  {
    /**
     * Constructs a new "PersonLinksMemberOf".
     * @alias module:model/PersonLinksMemberOf
     * @class
    
     */
    constructor(
    
    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = CategoryLinksOrganizationIriTemplate;
    }

    /**
    * Constructs a "PersonLinksMemberOf" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PersonLinksMemberOf } object Optional instance to populate.
    * @return { module:model/PersonLinksMemberOf } The populated "PersonLinksMemberOf" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PersonLinksMemberOf();
        }

        if (data.hasOwnProperty('href')) {
            object.href = ApiClient.convertToType(data.href, 'String');
        }
        if (data.hasOwnProperty('iriTemplate')) {
            object.iriTemplate = ApiClient.convertToType(data.iriTemplate, object.iriTemplateType);
        }

        return object;
    }

    

}



