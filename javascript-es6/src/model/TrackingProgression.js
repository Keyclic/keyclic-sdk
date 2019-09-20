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
 * The TrackingProgression model module.
 * @module model/TrackingProgression
 */
export default class TrackingProgression {
  /**
     * Constructs a new "TrackingProgression".
     * @alias module:model/TrackingProgression
     * @class
    
     */
  constructor() {
    this.resolved = null;
    this.total = null;
  }

  /**
   * Constructs a "TrackingProgression" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/TrackingProgression } object Optional instance to populate.
   * @return { module:model/TrackingProgression } The populated "TrackingProgression" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new TrackingProgression();
    }

    if (data.hasOwnProperty("resolved")) {
      object.resolved = ApiClient.convertToType(data["resolved"], "Number");
    }
    if (data.hasOwnProperty("total")) {
      object.total = ApiClient.convertToType(data["total"], "Number");
    }

    return object;
  }

  /**
   * @return { Number }
   */
  getResolved() {
    return this.resolved;
  }

  /**
   * @param { Number } resolved
   */
  setResolved(resolved) {
    this.resolved = resolved;
  }
  /**
   * @return { Number }
   */
  getTotal() {
    return this.total;
  }

  /**
   * @param { Number } total
   */
  setTotal(total) {
    this.total = total;
  }
}
