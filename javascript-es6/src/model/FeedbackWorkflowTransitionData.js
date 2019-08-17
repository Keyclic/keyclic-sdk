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
 * The FeedbackWorkflowTransitionData model module.
 * @module model/FeedbackWorkflowTransitionData
 */
export default class FeedbackWorkflowTransitionData {
  /**
     * Constructs a new "FeedbackWorkflowTransitionData".
     * @alias module:model/FeedbackWorkflowTransitionData
     * @class
    
     * @param transition { module:model/FeedbackWorkflowTransitionData.TransitionEnum }
    
     */
  constructor(transition) {
    this.transition = transition;
  }

  /**
   * Constructs a "FeedbackWorkflowTransitionData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/FeedbackWorkflowTransitionData } object Optional instance to populate.
   * @return { module:model/FeedbackWorkflowTransitionData } The populated "FeedbackWorkflowTransitionData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new FeedbackWorkflowTransitionData();
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
     * value: "deliver"
     * @const
     * @readonly
     */
    deliver: "deliver",
    /**
     * value: "dispatch"
     * @const
     * @readonly
     */
    dispatch: "dispatch",
    /**
     * value: "fail"
     * @const
     * @readonly
     */
    fail: "fail",
    /**
     * value: "process"
     * @const
     * @readonly
     */
    process: "process",
    /**
     * value: "publish"
     * @const
     * @readonly
     */
    publish: "publish",
    /**
     * value: "success"
     * @const
     * @readonly
     */
    success: "success"
  };
}
