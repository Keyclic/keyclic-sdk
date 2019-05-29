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
 * The WebhookPatch model module.
 * @module model/WebhookPatch
 */
export default class WebhookPatch {
  /**
     * Constructs a new "WebhookPatch".
     * @alias module:model/WebhookPatch
     * @class
    
     */
  constructor() {
    this.event = null;
    this.payloadUrl = null;
  }

  /**
   * Constructs a "WebhookPatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/WebhookPatch } object Optional instance to populate.
   * @return { module:model/WebhookPatch } The populated "WebhookPatch" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new WebhookPatch();
    }

    if (data.hasOwnProperty("event")) {
      object.event = ApiClient.convertToType(data["event"], "String");
    }
    if (data.hasOwnProperty("payloadUrl")) {
      object.payloadUrl = ApiClient.convertToType(data["payloadUrl"], "String");
    }

    return object;
  }
}
