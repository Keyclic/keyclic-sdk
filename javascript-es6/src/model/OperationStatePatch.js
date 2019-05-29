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
 * The OperationStatePatch model module.
 * @module model/OperationStatePatch
 */
export default class OperationStatePatch {
  /**
     * Constructs a new "OperationStatePatch".
     * @alias module:model/OperationStatePatch
     * @class
    
     * @param transition { module:model/OperationStatePatch.TransitionEnum }
    
     */
  constructor(transition) {
    this.transition = transition;
  }

  /**
   * Constructs a "OperationStatePatch" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OperationStatePatch } object Optional instance to populate.
   * @return { module:model/OperationStatePatch } The populated "OperationStatePatch" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OperationStatePatch();
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
     * value: "reset"
     * @const
     * @readonly
     */
    reset: "reset",
    /**
     * value: "assign"
     * @const
     * @readonly
     */
    assign: "assign",
    /**
     * value: "accept"
     * @const
     * @readonly
     */
    accept: "accept",
    /**
     * value: "refuse"
     * @const
     * @readonly
     */
    refuse: "refuse",
    /**
     * value: "progress"
     * @const
     * @readonly
     */
    progress: "progress",
    /**
     * value: "resolve"
     * @const
     * @readonly
     */
    resolve: "resolve"
  };
}
