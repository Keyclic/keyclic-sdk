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
import PlaceLinksSelfIriTemplateMapping from './PlaceLinksSelfIriTemplateMapping';




/**
 * The PlaceLinksSelfIriTemplate model module.
 * @module model/PlaceLinksSelfIriTemplate
 * @version 1.19.1
 */
export default class PlaceLinksSelfIriTemplate  {
    /**
     * Constructs a new "PlaceLinksSelfIriTemplate".
     * @alias module:model/PlaceLinksSelfIriTemplate
     * @class

     */
    constructor(

    ) {

        this.mapping = null;

        this.mappingType = PlaceLinksSelfIriTemplateMapping;
    }

    /**
    * Constructs a "PlaceLinksSelfIriTemplate" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/PlaceLinksSelfIriTemplate } object Optional instance to populate.
    * @return { module:model/PlaceLinksSelfIriTemplate } The populated "PlaceLinksSelfIriTemplate" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new PlaceLinksSelfIriTemplate();
        }

        if (data.hasOwnProperty('mapping')) {
            object.mapping = ApiClient.convertToType(data.mapping, object.mappingType);
        }

        return object;
    }



}



