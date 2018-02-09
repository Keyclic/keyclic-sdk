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
import ReportLinksCategory from './ReportLinksCategory';
import ReportLinksDelegatedFrom from './ReportLinksDelegatedFrom';
import ReportLinksDelegatedTo from './ReportLinksDelegatedTo';
import ReportLinksFeedback from './ReportLinksFeedback';
import ReportLinksOperations from './ReportLinksOperations';
import ReportLinksOrganization from './ReportLinksOrganization';
import ReportLinksSelf from './ReportLinksSelf';
import ReportLinksTracking from './ReportLinksTracking';




/**
 * The ReportLinks model module.
 * @module model/ReportLinks
 * @version 1.19.1
 */
export default class ReportLinks  {
    /**
     * Constructs a new "ReportLinks".
     * @alias module:model/ReportLinks
     * @class

     */
    constructor(

    ) {

        this.self = null;
        this.feedback = null;
        this.operations = null;
        this.organization = null;
        this.category = null;
        this.delegatedTo = null;
        this.delegatedFrom = null;
        this.tracking = null;

        this.selfType = ReportLinksSelf;
        this.feedbackType = ReportLinksFeedback;
        this.operationsType = ReportLinksOperations;
        this.organizationType = ReportLinksOrganization;
        this.categoryType = ReportLinksCategory;
        this.delegatedToType = ReportLinksDelegatedTo;
        this.delegatedFromType = ReportLinksDelegatedFrom;
        this.trackingType = ReportLinksTracking;
    }

    /**
    * Constructs a "ReportLinks" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportLinks } object Optional instance to populate.
    * @return { module:model/ReportLinks } The populated "ReportLinks" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportLinks();
        }

        if (data.hasOwnProperty('self')) {
            object.self = ApiClient.convertToType(data.self, object.selfType);
        }
        if (data.hasOwnProperty('feedback')) {
            object.feedback = ApiClient.convertToType(data.feedback, object.feedbackType);
        }
        if (data.hasOwnProperty('operations')) {
            object.operations = ApiClient.convertToType(data.operations, object.operationsType);
        }
        if (data.hasOwnProperty('organization')) {
            object.organization = ApiClient.convertToType(data.organization, object.organizationType);
        }
        if (data.hasOwnProperty('category')) {
            object.category = ApiClient.convertToType(data.category, object.categoryType);
        }
        if (data.hasOwnProperty('delegatedTo')) {
            object.delegatedTo = ApiClient.convertToType(data.delegatedTo, object.delegatedToType);
        }
        if (data.hasOwnProperty('delegatedFrom')) {
            object.delegatedFrom = ApiClient.convertToType(data.delegatedFrom, object.delegatedFromType);
        }
        if (data.hasOwnProperty('tracking')) {
            object.tracking = ApiClient.convertToType(data.tracking, object.trackingType);
        }

        return object;
    }



}



