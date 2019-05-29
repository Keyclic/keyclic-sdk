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
import FeedbackLinksImageIriTemplate from "./FeedbackLinksImageIriTemplate";

/**
 * The FeedbackLinksImage model module.
 * @module model/FeedbackLinksImage
 */
export default class FeedbackLinksImage {
  /**
     * Constructs a new "FeedbackLinksImage".
     * @alias module:model/FeedbackLinksImage
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = FeedbackLinksImageIriTemplate;
  }

  /**
   * Constructs a "FeedbackLinksImage" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackLinksImage } object Optional instance to populate.
   * @return { module:model/FeedbackLinksImage } The populated "FeedbackLinksImage" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackLinksImage();
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
