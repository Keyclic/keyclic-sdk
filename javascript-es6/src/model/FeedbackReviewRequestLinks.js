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
import FeedbackReviewRequestLinksItemToReview from "./FeedbackReviewRequestLinksItemToReview";
import FeedbackReviewRequestLinksOrganization from "./FeedbackReviewRequestLinksOrganization";
import FeedbackReviewRequestLinksReview from "./FeedbackReviewRequestLinksReview";
import FeedbackReviewRequestLinksReviewer from "./FeedbackReviewRequestLinksReviewer";
import FeedbackReviewRequestLinksSelf from "./FeedbackReviewRequestLinksSelf";

/**
 * The FeedbackReviewRequestLinks model module.
 * @module model/FeedbackReviewRequestLinks
 */
export default class FeedbackReviewRequestLinks {
  /**
     * Constructs a new "FeedbackReviewRequestLinks".
     * @alias module:model/FeedbackReviewRequestLinks
     * @class
    
     */
  constructor() {
    this.itemToReview = null;
    this.organization = null;
    this.review = null;
    this.reviewer = null;
    this.self = null;

    this.itemToReviewType = FeedbackReviewRequestLinksItemToReview;
    this.organizationType = FeedbackReviewRequestLinksOrganization;
    this.reviewType = FeedbackReviewRequestLinksReview;
    this.reviewerType = FeedbackReviewRequestLinksReviewer;
    this.selfType = FeedbackReviewRequestLinksSelf;
  }

  /**
   * Constructs a "FeedbackReviewRequestLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackReviewRequestLinks } object Optional instance to populate.
   * @return { module:model/FeedbackReviewRequestLinks } The populated "FeedbackReviewRequestLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackReviewRequestLinks();
    }

    if (data.hasOwnProperty("itemToReview")) {
      object.itemToReview = ApiClient.convertToType(
        data["itemToReview"],
        object.itemToReviewType
      );
    }
    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        object.organizationType
      );
    }
    if (data.hasOwnProperty("review")) {
      object.review = ApiClient.convertToType(
        data["review"],
        object.reviewType
      );
    }
    if (data.hasOwnProperty("reviewer")) {
      object.reviewer = ApiClient.convertToType(
        data["reviewer"],
        object.reviewerType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/FeedbackReviewRequestLinksItemToReview }
   */
  getItemToReview() {
    return this.itemToReview;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksItemToReview } itemToReview
   */
  setItemToReview(itemToReview) {
    this.itemToReview = itemToReview;
  }
  /**
   * @return { module:model/FeedbackReviewRequestLinksOrganization }
   */
  getOrganization() {
    return this.organization;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksOrganization } organization
   */
  setOrganization(organization) {
    this.organization = organization;
  }
  /**
   * @return { module:model/FeedbackReviewRequestLinksReview }
   */
  getReview() {
    return this.review;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksReview } review
   */
  setReview(review) {
    this.review = review;
  }
  /**
   * @return { module:model/FeedbackReviewRequestLinksReviewer }
   */
  getReviewer() {
    return this.reviewer;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksReviewer } reviewer
   */
  setReviewer(reviewer) {
    this.reviewer = reviewer;
  }
  /**
   * @return { module:model/FeedbackReviewRequestLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/FeedbackReviewRequestLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}
