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

import ApiClient from '../ApiClient'

/**
 * The WebhookLinksSelfIriTemplateMapping model module.
 * @module model/WebhookLinksSelfIriTemplateMapping
 */
export default class WebhookLinksSelfIriTemplateMapping {
  /**
     * Constructs a new "WebhookLinksSelfIriTemplateMapping".
     * @alias module:model/WebhookLinksSelfIriTemplateMapping
     * @class

     */
  constructor (

  ) {
    this.webhook = null
  }

  /**
    * Constructs a "WebhookLinksSelfIriTemplateMapping" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/WebhookLinksSelfIriTemplateMapping } object Optional instance to populate.
    * @return { module:model/WebhookLinksSelfIriTemplateMapping } The populated "WebhookLinksSelfIriTemplateMapping" instance.
    */
  static constructFromData (
    data,
    object = null
  ) {
    if (data === null) {
      throw new Error('No data to build object')
    }

    if (object === null) {
      object = new WebhookLinksSelfIriTemplateMapping()
    }

    if (data.hasOwnProperty('webhook')) {
      object.webhook = ApiClient.convertToType(data.webhook, 'String')
    }

    return object
  }
}
