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




/**
 * The FeedbackEmbedded model module.
 * @module model/FeedbackEmbedded
 * @version 1.0
 */
export default class FeedbackEmbedded  {
    /**
     * Constructs a new "FeedbackEmbedded".
     * @alias module:model/FeedbackEmbedded
     * @class

     */
    constructor(

    ) {

        this.stateTransitions = [];

    }

    /**
    * Constructs a "FeedbackEmbedded" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackEmbedded } object Optional instance to populate.
    * @return { module:model/FeedbackEmbedded } The populated "FeedbackEmbedded" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackEmbedded();
        }

        if (data.hasOwnProperty('stateTransitions')) {
            object.stateTransitions = ApiClient.convertToType(data.stateTransitions, '[\'String\']');
        }

        return object;
    }



}



