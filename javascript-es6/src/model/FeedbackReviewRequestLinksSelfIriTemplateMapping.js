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
 * The FeedbackReviewRequestLinksSelfIriTemplateMapping model module.
 * @module model/FeedbackReviewRequestLinksSelfIriTemplateMapping
 */
export default class FeedbackReviewRequestLinksSelfIriTemplateMapping {
  /**
     * Constructs a new "FeedbackReviewRequestLinksSelfIriTemplateMapping".
     * @alias module:model/FeedbackReviewRequestLinksSelfIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.reviewRequest = null;
  }

  /**
   * Constructs a "FeedbackReviewRequestLinksSelfIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackReviewRequestLinksSelfIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/FeedbackReviewRequestLinksSelfIriTemplateMapping } The populated "FeedbackReviewRequestLinksSelfIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackReviewRequestLinksSelfIriTemplateMapping();
    }

    if (data.hasOwnProperty("reviewRequest")) {
      object.reviewRequest = ApiClient.convertToType(
        data["reviewRequest"],
        "String"
      );
    }

    return object;
  }
}
