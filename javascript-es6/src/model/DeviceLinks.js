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
import DeviceLinksPerson from "./DeviceLinksPerson";
import DeviceLinksSelf from "./DeviceLinksSelf";

/**
 * The DeviceLinks model module.
 * @module model/DeviceLinks
 */
export default class DeviceLinks {
  /**
     * Constructs a new "DeviceLinks".
     * @alias module:model/DeviceLinks
     * @class
    
     */
  constructor() {
    this.person = null;
    this.self = null;

    this.personType = DeviceLinksPerson;
    this.selfType = DeviceLinksSelf;
  }

  /**
   * Constructs a "DeviceLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DeviceLinks } object Optional instance to populate.
   * @return { module:model/DeviceLinks } The populated "DeviceLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DeviceLinks();
    }

    if (data.hasOwnProperty("person")) {
      object.person = ApiClient.convertToType(
        data["person"],
        object.personType
      );
    }
    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }

    return object;
  }
}
