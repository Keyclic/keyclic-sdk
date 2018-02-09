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
import CategoryLinksSelfIriTemplate from './CategoryLinksSelfIriTemplate';




/**
 * The ReportLinksCategory model module.
 * @module model/ReportLinksCategory
 * @version 1.19.1
 */
export default class ReportLinksCategory  {
    /**
     * Constructs a new "ReportLinksCategory".
     * @alias module:model/ReportLinksCategory
     * @class

     */
    constructor(

    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = CategoryLinksSelfIriTemplate;
    }

    /**
    * Constructs a "ReportLinksCategory" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinksCategory } object Optional instance to populate.
    * @return { module:model/ReportLinksCategory } The populated "ReportLinksCategory" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinksCategory();
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



