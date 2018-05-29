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
import Member from './Member';


    

/**
 * The MemberCollection model module.
 * @module model/MemberCollection
 */
export default class MemberCollection  {
    /**
     * Constructs a new "MemberCollection".
     * @alias module:model/MemberCollection
     * @class
    
     */
    constructor(
    
    ) {

        this.items = [];

        this.itemsType = Member;
    }

    /**
    * Constructs a "MemberCollection" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/MemberCollection } object Optional instance to populate.
    * @return { module:model/MemberCollection } The populated "MemberCollection" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new MemberCollection();
        }

        if (data.hasOwnProperty('items')) {
            object.items = ApiClient.convertToType(data.items, [object.itemsType]);
        }

        return object;
    }

    

}



