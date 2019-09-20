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
import DelegationLinksCreatedBy from "./DelegationLinksCreatedBy";
import DelegationLinksReport from "./DelegationLinksReport";
import DelegationLinksSelf from "./DelegationLinksSelf";
import DelegationLinksService from "./DelegationLinksService";

/**
 * The DelegationLinks model module.
 * @module model/DelegationLinks
 */
export default class DelegationLinks {
  /**
     * Constructs a new "DelegationLinks".
     * @alias module:model/DelegationLinks
     * @class
    
     */
  constructor() {
    this.createdBy = null;
    this.report = null;
    this.self = null;
    this.service = null;

    this.createdByType = DelegationLinksCreatedBy;
    this.reportType = DelegationLinksReport;
    this.selfType = DelegationLinksSelf;
    this.serviceType = DelegationLinksService;
  }

  /**
   * Constructs a "DelegationLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DelegationLinks } object Optional instance to populate.
   * @return { module:model/DelegationLinks } The populated "DelegationLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DelegationLinks();
    }

    if (data.hasOwnProperty("createdBy")) {
      object.createdBy = ApiClient.convertToType(
        data["createdBy"],
        object.createdByType
      );
    }
    if (data.hasOwnProperty("report")) {
      object.report = ApiClient.convertToType(
        data["report"],
        object.reportType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }
    if (data.hasOwnProperty("service")) {
      object.service = ApiClient.convertToType(
        data["service"],
        object.serviceType
      );
    }

    return object;
  }

  /**
   * @return { module:model/DelegationLinksCreatedBy }
   */
  getCreatedBy() {
    return this.createdBy;
  }

  /**
   * @param { module:model/DelegationLinksCreatedBy } createdBy
   */
  setCreatedBy(createdBy) {
    this.createdBy = createdBy;
  }
  /**
   * @return { module:model/DelegationLinksReport }
   */
  getReport() {
    return this.report;
  }

  /**
   * @param { module:model/DelegationLinksReport } report
   */
  setReport(report) {
    this.report = report;
  }
  /**
   * @return { module:model/DelegationLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/DelegationLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
  /**
   * @return { module:model/DelegationLinksService }
   */
  getService() {
    return this.service;
  }

  /**
   * @param { module:model/DelegationLinksService } service
   */
  setService(service) {
    this.service = service;
  }
}
