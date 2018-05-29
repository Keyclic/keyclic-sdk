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
import CategoryLinksSelfIriTemplateMapping from './CategoryLinksSelfIriTemplateMapping';


    

/**
 * The CategoryLinksSelfIriTemplate model module.
 * @module model/CategoryLinksSelfIriTemplate
 */
export default class CategoryLinksSelfIriTemplate  {
    /**
     * Constructs a new "CategoryLinksSelfIriTemplate".
     * @alias module:model/CategoryLinksSelfIriTemplate
     * @class
    
     */
    constructor(
    
    ) {

        this.mapping = null;

        this.mappingType = CategoryLinksSelfIriTemplateMapping;
    }

    /**
    * Constructs a "CategoryLinksSelfIriTemplate" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/CategoryLinksSelfIriTemplate } object Optional instance to populate.
    * @return { module:model/CategoryLinksSelfIriTemplate } The populated "CategoryLinksSelfIriTemplate" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new CategoryLinksSelfIriTemplate();
        }

        if (data.hasOwnProperty('mapping')) {
            object.mapping = ApiClient.convertToType(data.mapping, object.mappingType);
        }

        return object;
    }

    

}



