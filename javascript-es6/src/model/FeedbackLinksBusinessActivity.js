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
import BusinessActivityLinksSelfIriTemplate from "./BusinessActivityLinksSelfIriTemplate";

/**
 * The FeedbackLinksBusinessActivity model module.
 * @module model/FeedbackLinksBusinessActivity
 */
export default class FeedbackLinksBusinessActivity {
  /**
     * Constructs a new "FeedbackLinksBusinessActivity".
     * @alias module:model/FeedbackLinksBusinessActivity
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = BusinessActivityLinksSelfIriTemplate;
  }

  /**
   * Constructs a "FeedbackLinksBusinessActivity" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksBusinessActivity } object Optional instance to populate.
   * @return { module:model/FeedbackLinksBusinessActivity } The populated "FeedbackLinksBusinessActivity" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackLinksBusinessActivity();
    }

    if (data.hasOwnProperty("href")) {
      object.href = ApiClient.convertToType(data["href"], "String");
    }
    if (data.hasOwnProperty("iriTemplate")) {
      object.iriTemplate = ApiClient.convertToType(
        data["iriTemplate"],
        object.iriTemplateType
      );
    }

    return object;
  }
}
