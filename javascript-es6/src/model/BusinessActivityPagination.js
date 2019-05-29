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
import BusinessActivityCollection from "./BusinessActivityCollection";
import PaginationLinks from "./PaginationLinks";

/**
 * The BusinessActivityPagination model module.
 * @module model/BusinessActivityPagination
 */
export default class BusinessActivityPagination {
  /**
     * Constructs a new "BusinessActivityPagination".
     * @alias module:model/BusinessActivityPagination
     * @class
    
     */
  constructor() {
    this.limit = null;
    this.page = null;
    this.pages = null;
    this.total = null;
    this.embedded = null;
    this.links = null;

    this.embeddedType = BusinessActivityCollection;
    this.linksType = PaginationLinks;
  }

  /**
   * Constructs a "BusinessActivityPagination" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/BusinessActivityPagination } object Optional instance to populate.
   * @return { module:model/BusinessActivityPagination } The populated "BusinessActivityPagination" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new BusinessActivityPagination();
    }

    if (data.hasOwnProperty("limit")) {
      object.limit = ApiClient.convertToType(data["limit"], "Number");
    }
    if (data.hasOwnProperty("page")) {
      object.page = ApiClient.convertToType(data["page"], "Number");
    }
    if (data.hasOwnProperty("pages")) {
      object.pages = ApiClient.convertToType(data["pages"], "Number");
    }
    if (data.hasOwnProperty("total")) {
      object.total = ApiClient.convertToType(data["total"], "Number");
    }
    if (data.hasOwnProperty("_embedded")) {
      object.embedded = ApiClient.convertToType(
        data["_embedded"],
        object.embeddedType
      );
    }
    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }

    return object;
  }
}
