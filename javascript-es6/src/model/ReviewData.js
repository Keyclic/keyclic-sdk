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

/**
 * The ReviewData model module.
 * @module model/ReviewData
 */
export default class ReviewData {
  /**
     * Constructs a new "ReviewData".
     * @alias module:model/ReviewData
     * @class
    
     */
  constructor() {
    this.reviewBody = null;
    this.reviewRating = null;
  }

  /**
   * Constructs a "ReviewData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewData } object Optional instance to populate.
   * @return { module:model/ReviewData } The populated "ReviewData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ReviewData();
    }

    if (data.hasOwnProperty("reviewBody")) {
      object.reviewBody = ApiClient.convertToType(data["reviewBody"], "String");
    }
    if (data.hasOwnProperty("reviewRating")) {
      object.reviewRating = ApiClient.convertToType(
        data["reviewRating"],
        "Number"
      );
    }

    return object;
  }
}