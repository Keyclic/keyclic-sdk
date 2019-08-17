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
import FeedbackReviewRequestLinksItemToReviewIriTemplate from "./FeedbackReviewRequestLinksItemToReviewIriTemplate";

/**
 * The FeedbackReviewRequestLinksItemToReview model module.
 * @module model/FeedbackReviewRequestLinksItemToReview
 */
export default class FeedbackReviewRequestLinksItemToReview {
  /**
     * Constructs a new "FeedbackReviewRequestLinksItemToReview".
     * @alias module:model/FeedbackReviewRequestLinksItemToReview
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = FeedbackReviewRequestLinksItemToReviewIriTemplate;
  }

  /**
   * Constructs a "FeedbackReviewRequestLinksItemToReview" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackReviewRequestLinksItemToReview } object Optional instance to populate.
   * @return { module:model/FeedbackReviewRequestLinksItemToReview } The populated "FeedbackReviewRequestLinksItemToReview" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackReviewRequestLinksItemToReview();
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
