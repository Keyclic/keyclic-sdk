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
import Feedback from './Feedback';


    

/**
 * The FeedbackCollection model module.
 * @module model/FeedbackCollection
 */
export default class FeedbackCollection  {
    /**
     * Constructs a new "FeedbackCollection".
     * @alias module:model/FeedbackCollection
     * @class
    
     */
    constructor(
    
    ) {

        this.items = [];

        this.itemsType = Feedback;
    }

    /**
    * Constructs a "FeedbackCollection" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/FeedbackCollection } object Optional instance to populate.
    * @return { module:model/FeedbackCollection } The populated "FeedbackCollection" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new FeedbackCollection();
        }

        if (data.hasOwnProperty('items')) {
            object.items = ApiClient.convertToType(data.items, [object.itemsType]);
        }

        return object;
    }

    

}



