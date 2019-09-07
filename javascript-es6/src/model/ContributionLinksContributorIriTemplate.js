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
import ContributionLinksContributorIriTemplateMapping from "./ContributionLinksContributorIriTemplateMapping";

/**
 * The ContributionLinksContributorIriTemplate model module.
 * @module model/ContributionLinksContributorIriTemplate
 */
export default class ContributionLinksContributorIriTemplate {
  /**
     * Constructs a new "ContributionLinksContributorIriTemplate".
     * @alias module:model/ContributionLinksContributorIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = ContributionLinksContributorIriTemplateMapping;
  }

  /**
   * Constructs a "ContributionLinksContributorIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksContributorIriTemplate } object Optional instance to populate.
   * @return { module:model/ContributionLinksContributorIriTemplate } The populated "ContributionLinksContributorIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ContributionLinksContributorIriTemplate();
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