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
 * The OperationEmbeddedDuration model module.
 * @module model/OperationEmbeddedDuration
 */
export default class OperationEmbeddedDuration {
  /**
     * Constructs a new "OperationEmbeddedDuration".
     * @alias module:model/OperationEmbeddedDuration
     * @class
    
     */
  constructor() {
    this.seconds = null;
  }

  /**
   * Constructs a "OperationEmbeddedDuration" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationEmbeddedDuration } object Optional instance to populate.
   * @return { module:model/OperationEmbeddedDuration } The populated "OperationEmbeddedDuration" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationEmbeddedDuration();
    }

    if (data.hasOwnProperty("seconds")) {
      object.seconds = ApiClient.convertToType(data["seconds"], "Number");
    }

    return object;
  }

  /**
   * @return { Number }
   */
  getSeconds() {
    return this.seconds;
  }

  /**
   * @param { Number } seconds
   */
  setSeconds(seconds) {
    this.seconds = seconds;
  }
}
