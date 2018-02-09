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




/**
 * The EmailData model module.
 * @module model/EmailData
 * @version 1.19.1
 */
export default class EmailData  {
    /**
     * Constructs a new "EmailData".
     * @alias module:model/EmailData
     * @class

     * @param email { String }

     */
    constructor(

        email,

    ) {

        this.email = email;

    }

    /**
    * Constructs a "EmailData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/EmailData } object Optional instance to populate.
    * @return { module:model/EmailData } The populated "EmailData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new EmailData();
        }

        if (data.hasOwnProperty('email')) {
            object.email = ApiClient.convertToType(data.email, 'String');
        }

        return object;
    }



}



