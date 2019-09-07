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

import ApiClient from "../ApiClient";
import DelegationCollection from "./DelegationCollection";
import Pagination from "./Pagination";
import PaginationLinks from "./PaginationLinks";

/**
 * The DelegationPagination model module.
 * @module model/DelegationPagination
 */
export default class DelegationPagination extends Pagination {
  /**
     * Constructs a new "DelegationPagination".
     * @alias module:model/DelegationPagination
     * @class
    
     */
  constructor() {
    super();

    this.embedded = null;

    this.embeddedType = DelegationCollection;
  }

  /**
   * Constructs a "DelegationPagination" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationPagination } object Optional instance to populate.
   * @return { module:model/DelegationPagination } The populated "DelegationPagination" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationPagination();
    }

    object = super.constructFromData(data, object);

    if (data.hasOwnProperty("_embedded")) {
      object.embedded = ApiClient.convertToType(
        data["_embedded"],
        object.embeddedType
      );
    }

    return object;
  }
}
