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
import OrganizationCollection from './OrganizationCollection';
import Pagination from './Pagination';
import PaginationLinks from './PaginationLinks';




/**
 * The OrganizationPagination model module.
 * @module model/OrganizationPagination
 * @version 1.0
 */
export default class OrganizationPagination extends Pagination {
    /**
     * Constructs a new "OrganizationPagination".
     * @alias module:model/OrganizationPagination
     * @class

     */
    constructor(

    ) {
        super(

        );

        this.embedded = null;

        this.embeddedType = OrganizationCollection;
    }

    /**
    * Constructs a "OrganizationPagination" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/OrganizationPagination } object Optional instance to populate.
    * @return { module:model/OrganizationPagination } The populated "OrganizationPagination" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new OrganizationPagination();
        }
        object = super.constructFromData(data, object);

        if (data.hasOwnProperty('_embedded')) {
            object.embedded = ApiClient.convertToType(data._embedded, object.embeddedType);
        }

        return object;
    }



}



