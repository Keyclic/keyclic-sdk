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
import CategoryLinksOrganizationIriTemplate from './CategoryLinksOrganizationIriTemplate';




/**
 * The MemberLinksOrganization model module.
 * @module model/MemberLinksOrganization
 * @version 1.0
 */
export default class MemberLinksOrganization  {
    /**
     * Constructs a new "MemberLinksOrganization".
     * @alias module:model/MemberLinksOrganization
     * @class

     */
    constructor(

    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = CategoryLinksOrganizationIriTemplate;
    }

    /**
    * Constructs a "MemberLinksOrganization" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberLinksOrganization } object Optional instance to populate.
    * @return { module:model/MemberLinksOrganization } The populated "MemberLinksOrganization" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberLinksOrganization();
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



