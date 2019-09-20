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
import OperationLinksFeedbackIriTemplate from "./OperationLinksFeedbackIriTemplate";

/**
 * The OperationLinksFeedback model module.
 * @module model/OperationLinksFeedback
 */
export default class OperationLinksFeedback {
  /**
     * Constructs a new "OperationLinksFeedback".
     * @alias module:model/OperationLinksFeedback
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = OperationLinksFeedbackIriTemplate;
  }

  /**
   * Constructs a "OperationLinksFeedback" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationLinksFeedback } object Optional instance to populate.
   * @return { module:model/OperationLinksFeedback } The populated "OperationLinksFeedback" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationLinksFeedback();
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
   * Gets The URI of the feedback associated to the given operation.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the feedback associated to the given operation.
   * @param { String } href The URI of the feedback associated to the given operation.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/OperationLinksFeedbackIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/OperationLinksFeedbackIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
