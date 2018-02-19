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
import BusinessActivityLinks from './BusinessActivityLinks';

/**
 * The BusinessActivity model module.
 * @module model/BusinessActivity
 */
export default class BusinessActivity {
    /**
     * Constructs a new "BusinessActivity".
     * @alias module:model/BusinessActivity
     * @class

     * @param name { String }

     * @param id { String }

     */
    constructor(

        name,

        id,

    ) {
        this.name = name;
        this.alternateName = null;
        this.id = id;
        this.type = null;
        this.links = null;

        this.linksType = BusinessActivityLinks;
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
            object.name = ApiClient.convertToType(data.name, 'String');
        }
        if (data.hasOwnProperty('alternateName')) {
            object.alternateName = ApiClient.convertToType(data.alternateName, 'String');
        }
        if (data.hasOwnProperty('id')) {
            object.id = ApiClient.convertToType(data.id, 'String');
        }
        if (data.hasOwnProperty('type')) {
            object.type = ApiClient.convertToType(data.type, 'String');
        }
        if (data.hasOwnProperty('_links')) {
            object.links = ApiClient.convertToType(data._links, object.linksType);
        }

        return object;
    }
}
