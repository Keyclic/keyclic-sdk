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
 * The Activity model module.
 * @module model/Activity
 */
export default class Activity  {
    /**
     * Constructs a new "Activity".
     * @alias module:model/Activity
     * @class
    
     * @param actor { String }
    
     * @param verb { String }
    
     * @param _object { String }
    
     * @param message { String }
    
     * @param time { Date }
    
     */
    constructor(
    
        actor,
    
        verb,
    
        _object,
    
        message,
    
        time,
    
    ) {

        this.actor = actor;
        this.verb = verb;
        this._object = _object;
        this.message = message;
        this.time = time;

    }

    /**
    * Constructs a "Activity" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/Activity } object Optional instance to populate.
    * @return { module:model/Activity } The populated "Activity" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new Activity();
        }

        if (data.hasOwnProperty('actor')) {
            object.actor = ApiClient.convertToType(data.actor, 'String');
        }
        if (data.hasOwnProperty('verb')) {
            object.verb = ApiClient.convertToType(data.verb, 'String');
        }
        if (data.hasOwnProperty('object')) {
            object._object = ApiClient.convertToType(data.object, 'String');
        }
        if (data.hasOwnProperty('message')) {
            object.message = ApiClient.convertToType(data.message, 'String');
        }
        if (data.hasOwnProperty('time')) {
            object.time = ApiClient.convertToType(data.time, 'Date');
        }

        return object;
    }

    

}



