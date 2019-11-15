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
import ApplicationAgreementPrivacyPolicy from "./ApplicationAgreementPrivacyPolicy";

/**
 * The ApplicationAgreement model module.
 * @module model/ApplicationAgreement
 */
export default class ApplicationAgreement {
  /**
     * Constructs a new "ApplicationAgreement".
     * @alias module:model/ApplicationAgreement
     * @class
    
     */
  constructor() {
    this.olderThan = null;
    this.privacyPolicy = null;
    this.termsOfService = null;

    this.privacyPolicyType = ApplicationAgreementPrivacyPolicy;
    this.termsOfServiceType = ApplicationAgreementPrivacyPolicy;
  }

  /**
   * Constructs a "ApplicationAgreement" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ApplicationAgreement } object Optional instance to populate.
   * @return { module:model/ApplicationAgreement } The populated "ApplicationAgreement" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ApplicationAgreement();
    }

    if (data.hasOwnProperty("olderThan")) {
      object.olderThan = ApiClient.convertToType(data["olderThan"], "Number");
    }
    if (data.hasOwnProperty("privacyPolicy")) {
      object.privacyPolicy = ApiClient.convertToType(
        data["privacyPolicy"],
        object.privacyPolicyType
      );
    }
    if (data.hasOwnProperty("termsOfService")) {
      object.termsOfService = ApiClient.convertToType(
        data["termsOfService"],
        object.termsOfServiceType
      );
    }

    return object;
  }

  /**
   * @return { Number }
   */
  getOlderThan() {
    return this.olderThan;
  }

  /**
   * @param { Number } olderThan
   */
  setOlderThan(olderThan) {
    this.olderThan = olderThan;
  }
  /**
   * @return { module:model/ApplicationAgreementPrivacyPolicy }
   */
  getPrivacyPolicy() {
    return this.privacyPolicy;
  }

  /**
   * @param { module:model/ApplicationAgreementPrivacyPolicy } privacyPolicy
   */
  setPrivacyPolicy(privacyPolicy) {
    this.privacyPolicy = privacyPolicy;
  }
  /**
   * @return { module:model/ApplicationAgreementPrivacyPolicy }
   */
  getTermsOfService() {
    return this.termsOfService;
  }

  /**
   * @param { module:model/ApplicationAgreementPrivacyPolicy } termsOfService
   */
  setTermsOfService(termsOfService) {
    this.termsOfService = termsOfService;
  }
}