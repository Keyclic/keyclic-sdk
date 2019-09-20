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
import FeedbackLinksImagesIriTemplate from "./FeedbackLinksImagesIriTemplate";

/**
 * The FeedbackLinksImages model module.
 * @module model/FeedbackLinksImages
 */
export default class FeedbackLinksImages {
  /**
     * Constructs a new "FeedbackLinksImages".
     * @alias module:model/FeedbackLinksImages
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = FeedbackLinksImagesIriTemplate;
  }

  /**
   * Constructs a "FeedbackLinksImages" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksImages } object Optional instance to populate.
   * @return { module:model/FeedbackLinksImages } The populated "FeedbackLinksImages" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackLinksImages();
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
   * Gets The URI of the images associated to the given feedback.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the images associated to the given feedback.
   * @param { String } href The URI of the images associated to the given feedback.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/FeedbackLinksImagesIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/FeedbackLinksImagesIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
