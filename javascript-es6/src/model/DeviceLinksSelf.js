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
import DeviceLinksSelfIriTemplate from "./DeviceLinksSelfIriTemplate";

/**
 * The DeviceLinksSelf model module.
 * @module model/DeviceLinksSelf
 */
export default class DeviceLinksSelf {
  /**
     * Constructs a new "DeviceLinksSelf".
     * @alias module:model/DeviceLinksSelf
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = DeviceLinksSelfIriTemplate;
  }

  /**
   * Constructs a "DeviceLinksSelf" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DeviceLinksSelf } object Optional instance to populate.
   * @return { module:model/DeviceLinksSelf } The populated "DeviceLinksSelf" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DeviceLinksSelf();
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
   * Gets The URI of the self associated to the given device.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the self associated to the given device.
   * @param { String } href The URI of the self associated to the given device.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/DeviceLinksSelfIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/DeviceLinksSelfIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
