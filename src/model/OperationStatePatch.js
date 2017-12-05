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
 * The OperationStatePatch model module.
 * @module model/OperationStatePatch
 * @version 1.0
 */
export default class OperationStatePatch  {
    /**
     * Constructs a new "OperationStatePatch".
     * @alias module:model/OperationStatePatch
     * @class

     * @param transition { module:model/OperationStatePatch.TransitionEnum }

     */
    constructor(

        transition,

    ) {

        this.transition = transition;

    }

    /**
    * Constructs a "OperationStatePatch" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OperationStatePatch } object Optional instance to populate.
    * @return { module:model/OperationStatePatch } The populated "OperationStatePatch" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OperationStatePatch();
        }

        if (data.hasOwnProperty('transition')) {
            object.transition = ApiClient.convertToType(data.transition, 'String');
        }

        return object;
    }



    /**
    * Allowed values for the "transition" property.
    * @enum { String }
    */
    static TransitionEnum = {
        /**
         * value: "reset"
         * @const
         * @readonly
         */
        "reset": "reset", // eslint-disable-line quotes
        /**
         * value: "assign"
         * @const
         * @readonly
         */
        "assign": "assign", // eslint-disable-line quotes
        /**
         * value: "accept"
         * @const
         * @readonly
         */
        "accept": "accept", // eslint-disable-line quotes
        /**
         * value: "refuse"
         * @const
         * @readonly
         */
        "refuse": "refuse", // eslint-disable-line quotes
        /**
         * value: "progress"
         * @const
         * @readonly
         */
        "progress": "progress", // eslint-disable-line quotes
        /**
         * value: "resolve"
         * @const
         * @readonly
         */
        "resolve": "resolve", // eslint-disable-line quotes
    };

}



