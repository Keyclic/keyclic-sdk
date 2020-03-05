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
import InvitationLinksMemberIriTemplateMapping from "./InvitationLinksMemberIriTemplateMapping";

/**
 * The InvitationLinksMemberIriTemplate model module.
 * @module model/InvitationLinksMemberIriTemplate
 */
export default class InvitationLinksMemberIriTemplate {
  /**
     * Constructs a new "InvitationLinksMemberIriTemplate".
     * @alias module:model/InvitationLinksMemberIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = InvitationLinksMemberIriTemplateMapping;
  }

  /**
   * Constructs a "InvitationLinksMemberIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/InvitationLinksMemberIriTemplate } object Optional instance to populate.
   * @return { module:model/InvitationLinksMemberIriTemplate } The populated "InvitationLinksMemberIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new InvitationLinksMemberIriTemplate();
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
   * @return { module:model/InvitationLinksMemberIriTemplateMapping }
   */
  getMapping() {
    return this.mapping;
  }

  /**
   * @param { module:model/InvitationLinksMemberIriTemplateMapping } mapping
   */
  setMapping(mapping) {
    this.mapping = mapping;
  }
}