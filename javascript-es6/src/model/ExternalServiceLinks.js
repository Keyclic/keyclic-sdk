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
import ExternalServiceLinksProvider from "./ExternalServiceLinksProvider";
import ExternalServiceLinksSelf from "./ExternalServiceLinksSelf";

/**
 * The ExternalServiceLinks model module.
 * @module model/ExternalServiceLinks
 */
export default class ExternalServiceLinks {
  /**
     * Constructs a new "ExternalServiceLinks".
     * @alias module:model/ExternalServiceLinks
     * @class
    
     */
  constructor() {
    this.provider = null;
    this.self = null;

    this.providerType = ExternalServiceLinksProvider;
    this.selfType = ExternalServiceLinksSelf;
  }

  /**
   * Constructs a "ExternalServiceLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ExternalServiceLinks } object Optional instance to populate.
   * @return { module:model/ExternalServiceLinks } The populated "ExternalServiceLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ExternalServiceLinks();
    }

    if (data.hasOwnProperty("provider")) {
      object.provider = ApiClient.convertToType(
        data["provider"],
        object.providerType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }

  /**
   * @return { module:model/ExternalServiceLinksProvider }
   */
  getProvider() {
    return this.provider;
  }

  /**
   * @param { module:model/ExternalServiceLinksProvider } provider
   */
  setProvider(provider) {
    this.provider = provider;
  }
  /**
   * @return { module:model/ExternalServiceLinksSelf }
   */
  getSelf() {
    return this.self;
  }

  /**
   * @param { module:model/ExternalServiceLinksSelf } self
   */
  setSelf(self) {
    this.self = self;
  }
}
