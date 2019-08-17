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
import DelegationLinksReportIriTemplateMapping from "./DelegationLinksReportIriTemplateMapping";

/**
 * The ReportLinksSelfIriTemplate model module.
 * @module model/ReportLinksSelfIriTemplate
 */
export default class ReportLinksSelfIriTemplate {
  /**
     * Constructs a new "ReportLinksSelfIriTemplate".
     * @alias module:model/ReportLinksSelfIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = DelegationLinksReportIriTemplateMapping;
  }

  /**
   * Constructs a "ReportLinksSelfIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportLinksSelfIriTemplate } object Optional instance to populate.
   * @return { module:model/ReportLinksSelfIriTemplate } The populated "ReportLinksSelfIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ReportLinksSelfIriTemplate();
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
