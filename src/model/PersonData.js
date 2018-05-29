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
 * The PersonData model module.
 * @module model/PersonData
 */
export default class PersonData  {
    /**
     * Constructs a new "PersonData".
     * @alias module:model/PersonData
     * @class
    
     * @param person { String }
    
     */
    constructor(
    
        person,
    
    ) {

        this.person = person;

    }

    /**
    * Constructs a "PersonData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PersonData } object Optional instance to populate.
    * @return { module:model/PersonData } The populated "PersonData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PersonData();
        }

        if (data.hasOwnProperty('person')) {
            object.person = ApiClient.convertToType(data.person, 'String');
        }

        return object;
    }

    

}



