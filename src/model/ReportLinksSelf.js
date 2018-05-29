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
import OperationLinksReportIriTemplate from './OperationLinksReportIriTemplate';


    

/**
 * The ReportLinksSelf model module.
 * @module model/ReportLinksSelf
 */
export default class ReportLinksSelf  {
    /**
     * Constructs a new "ReportLinksSelf".
     * @alias module:model/ReportLinksSelf
     * @class
    
     */
    constructor(
    
    ) {

        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = OperationLinksReportIriTemplate;
    }

    /**
    * Constructs a "ReportLinksSelf" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinksSelf } object Optional instance to populate.
    * @return { module:model/ReportLinksSelf } The populated "ReportLinksSelf" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinksSelf();
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



