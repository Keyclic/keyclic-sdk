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
 * The BusinessActivity model module.
 * @module model/BusinessActivity
 * @version 1.0
 */
export default class BusinessActivity  {
    /**
     * Constructs a new "BusinessActivity".
     * @alias module:model/BusinessActivity
     * @class
    
     * @param name { String } 
    
     * @param id { String } 
    
     * @param createdAt { Date } 
    
     * @param updatedAt { Date } 
    
     */
    constructor(
    
        name,
    
        id,
    
        createdAt,
    
        updatedAt,
    
    ) {

        this.name = name;
        this.alternateName = null;
        this.id = id;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.type = null;

    }

    /**
    * Constructs a "BusinessActivity" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/BusinessActivity } object Optional instance to populate.
    * @return { module:model/BusinessActivity } The populated "BusinessActivity" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new BusinessActivity();
        }

        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data['name'], 'String');
        }
        if (data.hasOwnProperty('alternate_name')) {
            object.alternateName = ApiClient.convertToType(data['alternate_name'], 'String');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data['id'], 'String');
        }
        if (data.hasOwnProperty('created_at')) {
            object.createdAt = ApiClient.convertToType(data['created_at'], 'Date');
        }
        if (data.hasOwnProperty('updated_at')) {
            object.updatedAt = ApiClient.convertToType(data['updated_at'], 'Date');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data['type'], 'String');
        }

        return object;
    }

    

}


