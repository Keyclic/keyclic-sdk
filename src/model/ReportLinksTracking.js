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
 * The ReportLinksTracking model module.
 * @module model/ReportLinksTracking
 */
export default class ReportLinksTracking {
    /**
     * Constructs a new "ReportLinksTracking".
     * @alias module:model/ReportLinksTracking
     * @class

     */
    constructor(

    ) {
        this.href = null;
        this.iriTemplate = null;

        this.iriTemplateType = OperationLinksReportIriTemplate;
    }

    /**
    * Constructs a "ReportLinksTracking" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinksTracking } object Optional instance to populate.
    * @return { module:model/ReportLinksTracking } The populated "ReportLinksTracking" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinksTracking();
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
