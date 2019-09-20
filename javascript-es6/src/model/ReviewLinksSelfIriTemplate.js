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
import FeedbackReviewRequestLinksReviewIriTemplateMapping from "./FeedbackReviewRequestLinksReviewIriTemplateMapping";

/**
 * The ReviewLinksSelfIriTemplate model module.
 * @module model/ReviewLinksSelfIriTemplate
 */
export default class ReviewLinksSelfIriTemplate {
  /**
     * Constructs a new "ReviewLinksSelfIriTemplate".
     * @alias module:model/ReviewLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = FeedbackReviewRequestLinksReviewIriTemplateMapping;
  }

  /**
   * Constructs a "ReviewLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReviewLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/ReviewLinksSelfIriTemplate } The populated "ReviewLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ReviewLinksSelfIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }

  /**
   * @return { module:model/FeedbackReviewRequestLinksReviewIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksReviewIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}
