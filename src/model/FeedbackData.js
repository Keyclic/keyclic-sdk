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
import FeedbackDataGeo from './FeedbackDataGeo';


    

/**
 * The FeedbackData model module.
 * @module model/FeedbackData
 */
export default class FeedbackData  {
    /**
     * Constructs a new "FeedbackData".
     * @alias module:model/FeedbackData
     * @class
    
     * @param geo { module:model/FeedbackDataGeo }
    
     * @param visibility { module:model/FeedbackData.VisibilityEnum }
    
     */
    constructor(
    
        geo,
    
        visibility,
    
    ) {

        this.category = null;
        this.geo = geo;
        this.description = null;
        this.visibility = visibility;
        this.businessActivity = null;
        this.proMode = null;

        this.geoType = FeedbackDataGeo;
    }

    /**
    * Constructs a "FeedbackData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackData } object Optional instance to populate.
    * @return { module:model/FeedbackData } The populated "FeedbackData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackData();
        }

        if (data.hasOwnProperty('category')) {
            object.category = ApiClient.convertToType(data.category, 'String');
        }
        if (data.hasOwnProperty('geo')) {
            object.geo = ApiClient.convertToType(data.geo, object.geoType);
        }
        if (data.hasOwnProperty('description')) {
            object.description = ApiClient.convertToType(data.description, 'String');
        }
        if (data.hasOwnProperty('visibility')) {
            object.visibility = ApiClient.convertToType(data.visibility, 'String');
        }
        if (data.hasOwnProperty('businessActivity')) {
            object.businessActivity = ApiClient.convertToType(data.businessActivity, 'String');
        }
        if (data.hasOwnProperty('proMode')) {
            object.proMode = ApiClient.convertToType(data.proMode, 'Boolean');
        }

        return object;
    }

    

       /**
    * Allowed values for the "visibility" property.
    * @enum { String }
    */
    static VisibilityEnum = {
        /**
         * value: "VISIBILITY_PUBLIC"
         * @const
         * @readonly
         */
        "PUBLIC": "VISIBILITY_PUBLIC", // eslint-disable-line quotes
        /**
         * value: "VISIBILITY_PRIVATE"
         * @const
         * @readonly
         */
        "PRIVATE": "VISIBILITY_PRIVATE", // eslint-disable-line quotes
    };

}



