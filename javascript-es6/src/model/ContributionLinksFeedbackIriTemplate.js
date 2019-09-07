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
import ContributionLinksFeedbackIriTemplateMapping from "./ContributionLinksFeedbackIriTemplateMapping";

/**
 * The ContributionLinksFeedbackIriTemplate model module.
 * @module model/ContributionLinksFeedbackIriTemplate
 */
export default class ContributionLinksFeedbackIriTemplate {
  /**
     * Constructs a new "ContributionLinksFeedbackIriTemplate".
     * @alias module:model/ContributionLinksFeedbackIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = ContributionLinksFeedbackIriTemplateMapping;
  }

  /**
   * Constructs a "ContributionLinksFeedbackIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksFeedbackIriTemplate } object Optional instance to populate.
   * @return { module:model/ContributionLinksFeedbackIriTemplate } The populated "ContributionLinksFeedbackIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ContributionLinksFeedbackIriTemplate();
    }

    if (data.hasOwnProperty("mapping")) {
      object.mapping = ApiClient.convertToType(
        data["mapping"],
        object.mappingType
      );
    }

    return object;
  }
}