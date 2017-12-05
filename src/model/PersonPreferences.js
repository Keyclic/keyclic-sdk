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
 * The PersonPreferences model module.
 * @module model/PersonPreferences
 * @version 1.0
 */
export default class PersonPreferences  {
    /**
     * Constructs a new "PersonPreferences".
     * @alias module:model/PersonPreferences
     * @class

     * @param messageEmailEnabled { Boolean }

     * @param messagePushEnabled { Boolean }

     */
    constructor(

        messageEmailEnabled,

        messagePushEnabled,

    ) {

        this.messageEmailEnabled = messageEmailEnabled;
        this.messagePushEnabled = messagePushEnabled;

    }

    /**
    * Constructs a "PersonPreferences" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PersonPreferences } object Optional instance to populate.
    * @return { module:model/PersonPreferences } The populated "PersonPreferences" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PersonPreferences();
        }

        if (data.hasOwnProperty('messageEmailEnabled')) {
            object.messageEmailEnabled = ApiClient.convertToType(data.messageEmailEnabled, 'Boolean');
        }
        if (data.hasOwnProperty('messagePushEnabled')) {
            object.messagePushEnabled = ApiClient.convertToType(data.messagePushEnabled, 'Boolean');
        }

        return object;
    }



}


