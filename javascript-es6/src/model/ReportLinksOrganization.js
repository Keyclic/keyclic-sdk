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
import ReportLinksOrganizationIriTemplate from "./ReportLinksOrganizationIriTemplate";

/**
 * The ReportLinksOrganization model module.
 * @module model/ReportLinksOrganization
 */
export default class ReportLinksOrganization {
  /**
     * Constructs a new "ReportLinksOrganization".
     * @alias module:model/ReportLinksOrganization
     * @class
    
     */
  constructor() {
    this.href = null;
    this.iriTemplate = null;

    this.iriTemplateType = ReportLinksOrganizationIriTemplate;
  }

  /**
   * Constructs a "ReportLinksOrganization" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportLinksOrganization } object Optional instance to populate.
   * @return { module:model/ReportLinksOrganization } The populated "ReportLinksOrganization" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ReportLinksOrganization();
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
   * Gets The URI of the organization associated to the given report.
   * @return { String }
   */
  getHref() {
    return this.href;
  }

  /**
   * Sets The URI of the organization associated to the given report.
   * @param { String } href The URI of the organization associated to the given report.
   */
  setHref(href) {
    this.href = href;
  }
  /**
   * @return { module:model/ReportLinksOrganizationIriTemplate }
   */
  getIriTemplate() {
    return this.iriTemplate;
  }

  /**
   * @param { module:model/ReportLinksOrganizationIriTemplate } iriTemplate
   */
  setIriTemplate(iriTemplate) {
    this.iriTemplate = iriTemplate;
  }
}
