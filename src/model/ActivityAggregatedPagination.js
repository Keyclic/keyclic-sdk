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
import Result from './Result';

/**
 * The ActivityAggregatedPagination model module.
 * @module model/ActivityAggregatedPagination
 */
export default class ActivityAggregatedPagination {
    /**
     * Constructs a new "ActivityAggregatedPagination".
     * @alias module:model/ActivityAggregatedPagination
     * @class

     */
    constructor(

    ) {
        this.duration = null;
        this.next = null;
        this.results = [];

        this.resultsType = Result;
    }

    /**
    * Constructs a "ActivityAggregatedPagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ActivityAggregatedPagination } object Optional instance to populate.
    * @return { module:model/ActivityAggregatedPagination } The populated "ActivityAggregatedPagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ActivityAggregatedPagination();
        }

        if (data.hasOwnProperty('duration')) {
            object.duration = ApiClient.convertToType(data.duration, 'String');
        }
        if (data.hasOwnProperty('next')) {
            object.next = ApiClient.convertToType(data.next, 'String');
        }
        if (data.hasOwnProperty('results')) {
            object.results = ApiClient.convertToType(data.results, [object.resultsType]);
        }

        return object;
    }
}
