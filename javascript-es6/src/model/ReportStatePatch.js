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
 * The ReportStatePatch model module.
 * @module model/ReportStatePatch
 */
export default class ReportStatePatch {
  /**
     * Constructs a new "ReportStatePatch".
     * @alias module:model/ReportStatePatch
     * @class
    
     * @param transition { module:model/ReportStatePatch.TransitionEnum }
    
     */
  constructor(transition) {
    this.transition = transition;
  }

  /**
   * Constructs a "ReportStatePatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ReportStatePatch } object Optional instance to populate.
   * @return { module:model/ReportStatePatch } The populated "ReportStatePatch" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ReportStatePatch();
    }

    if (data.hasOwnProperty("transition")) {
      object.transition = ApiClient.convertToType(data["transition"], "String");
    }

    return object;
  }

  /**
   * Allowed values for the "transition" property.
   * @enum { String }
   */
  static TransitionEnum = {
    /**
     * value: "accept"
     * @const
     * @readonly
     */
    accept: "accept",
    /**
     * value: "close"
     * @const
     * @readonly
     */
    close: "close",
    /**
     * value: "hold"
     * @const
     * @readonly
     */
    hold: "hold",
    /**
     * value: "progress"
     * @const
     * @readonly
     */
    progress: "progress",
    /**
     * value: "refuse"
     * @const
     * @readonly
     */
    refuse: "refuse"
  };
}
