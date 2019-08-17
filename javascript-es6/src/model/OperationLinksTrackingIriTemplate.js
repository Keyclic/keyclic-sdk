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
import OperationLinksSelfIriTemplateMapping from "./OperationLinksSelfIriTemplateMapping";

/**
 * The OperationLinksTrackingIriTemplate model module.
 * @module model/OperationLinksTrackingIriTemplate
 */
export default class OperationLinksTrackingIriTemplate {
  /**
     * Constructs a new "OperationLinksTrackingIriTemplate".
     * @alias module:model/OperationLinksTrackingIriTemplate
     * @class
    
     */
  constructor() {
    this.mapping = null;

    this.mappingType = OperationLinksSelfIriTemplateMapping;
  }

  /**
   * Constructs a "OperationLinksTrackingIriTemplate" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationLinksTrackingIriTemplate } object Optional instance to populate.
   * @return { module:model/OperationLinksTrackingIriTemplate } The populated "OperationLinksTrackingIriTemplate" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationLinksTrackingIriTemplate();
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
