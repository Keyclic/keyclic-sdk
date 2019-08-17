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
import DeviceLinks from "./DeviceLinks";

/**
 * The Device model module.
 * @module model/Device
 */
export default class Device {
  /**
     * Constructs a new "Device".
     * @alias module:model/Device
     * @class
    
     */
  constructor() {
    this.links = null;
    this.id = null;
    this.type = null;

    this.linksType = DeviceLinks;
  }

  /**
   * Constructs a "Device" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Device } object Optional instance to populate.
   * @return { module:model/Device } The populated "Device" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Device();
    }

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }
}
