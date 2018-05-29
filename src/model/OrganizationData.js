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
 * The OrganizationData model module.
 * @module model/OrganizationData
 */
export default class OrganizationData  {
    /**
     * Constructs a new "OrganizationData".
     * @alias module:model/OrganizationData
     * @class
    
     * @param name { String }
    
     * @param businessActivity { String }
    
     */
    constructor(
    
        name,
    
        businessActivity,
    
    ) {

        this.name = name;
        this.businessActivity = businessActivity;
        this.logo = null;

    }

    /**
    * Constructs a "OrganizationData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OrganizationData } object Optional instance to populate.
    * @return { module:model/OrganizationData } The populated "OrganizationData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OrganizationData();
        }

        if (data.hasOwnProperty('name')) {
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('businessActivity')) {
            object.businessActivity = ApiClient.convertToType(data.businessActivity, 'String');
        }
        if (data.hasOwnProperty('logo')) {
            object.logo = ApiClient.convertToType(data.logo, 'Blob');
        }

        return object;
    }

    

}



