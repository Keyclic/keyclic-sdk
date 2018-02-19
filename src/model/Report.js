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
import FeedbackEmbedded from './FeedbackEmbedded';
import ReportLinks from './ReportLinks';

/**
 * The Report model module.
 * @module model/Report
 */
export default class Report {
    /**
     * Constructs a new "Report".
     * @alias module:model/Report
     * @class

     * @param priority { Number }

     * @param id { String }

     * @param updatedAt { Date }

     */
    constructor(

        priority,

        id,

        updatedAt,

    ) {
        this.description = null;
        this.priority = priority;
        this.tags = [];
        this.id = id;
        this.identificationNumber = null;
        this.createdAt = null;
        this.updatedAt = updatedAt;
        this.type = null;
        this.state = [];
        this.links = null;
        this.embedded = null;

        this.linksType = ReportLinks;
        this.embeddedType = FeedbackEmbedded;
    }

    /**
    * Constructs a "Report" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Report } object Optional instance to populate.
    * @return { module:model/Report } The populated "Report" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Report();
        }

        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('priority')) {
            object.priority = ApiClient.convertToType(data.priority, 'Number');
        }
        if (data.hasOwnProperty('tags')) {
            object.tags = ApiClient.convertToType(data.tags, '[\'String\']');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('createdAt')) {
            object.createdAt = ApiClient.convertToType(data.createdAt, 'Date');
        }
        if (data.hasOwnProperty('updatedAt')) {
            object.updatedAt = ApiClient.convertToType(data.updatedAt, 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('state')) {
            object.state = ApiClient.convertToType(data.state, '[\'String\']');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }
        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data._embedded, object.embeddedType);
        }

        return object;
    }
}
