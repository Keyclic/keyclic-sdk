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
 * The ContributionLinksContributorIriTemplateMapping model module.
 * @module model/ContributionLinksContributorIriTemplateMapping
 */
export default class ContributionLinksContributorIriTemplateMapping {
  /**
     * Constructs a new "ContributionLinksContributorIriTemplateMapping".
     * @alias module:model/ContributionLinksContributorIriTemplateMapping
     * @class
    
     */
  constructor() {
    this.person = null;
  }

  /**
   * Constructs a "ContributionLinksContributorIriTemplateMapping" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ContributionLinksContributorIriTemplateMapping } object Optional instance to populate.
   * @return { module:model/ContributionLinksContributorIriTemplateMapping } The populated "ContributionLinksContributorIriTemplateMapping" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ContributionLinksContributorIriTemplateMapping();
    }

    if (data.hasOwnProperty("person")) {
      object.person = ApiClient.convertToType(data["person"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getPerson() {
    return this.person;
  }

  /**
   * @param { String } person
   */
  setPerson(person) {
    this.person = person;
  }
}
