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
import ContributionLinksFeedbackIriTemplate from "./ContributionLinksFeedbackIriTemplate";

/**
 * The ContributionLinksFeedback model module.
 * @module model/ContributionLinksFeedback
 */
export default class ContributionLinksFeedback {
  /**
     * Constructs a new "ContributionLinksFeedback".
     * @alias module:model/ContributionLinksFeedback
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = ContributionLinksFeedbackIriTemplate;
  }

  /**
   * Constructs a "ContributionLinksFeedback" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksFeedback } object Optional instance to populate.
   * @return { module:model/ContributionLinksFeedback } The populated "ContributionLinksFeedback" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ContributionLinksFeedback();
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

  /**
   * Gets The URI of the feedback associated to the given contribution.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the feedback associated to the given contribution.
   * @param { String } href The URI of the feedback associated to the given contribution.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/ContributionLinksFeedbackIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/ContributionLinksFeedbackIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
