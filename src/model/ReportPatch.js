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

/**
 * The ReportPatch model module.
 * @module model/ReportPatch
 */
export default class ReportPatch {
    /**
     * Constructs a new "ReportPatch".
     * @alias module:model/ReportPatch
     * @class

     */
    constructor(

    ) {
        this.description = null;
        this.identificationNumber = null;
        this.priority = null;
        this.tags = [];
    }

    /**
    * Constructs a "ReportPatch" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ReportPatch } object Optional instance to populate.
    * @return { module:model/ReportPatch } The populated "ReportPatch" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ReportPatch();
        }

        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('identificationNumber')) {
            object.identificationNumber = ApiClient.convertToType(data.identificationNumber, 'String');
        }
        if (data.hasOwnProperty('priority')) {
            object.priority = ApiClient.convertToType(data.priority, 'Number');
        }
        if (data.hasOwnProperty('tags')) {
            object.tags = ApiClient.convertToType(data.tags, '[\'String\']');
        }

        return object;
    }
}
