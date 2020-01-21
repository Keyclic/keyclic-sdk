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
 * The TransitionState model module.
 * @module model/TransitionState
 */
export default class TransitionState {
  /**
     * Constructs a new "TransitionState".
     * @alias module:model/TransitionState
     * @class
    
     */
  constructor() {
    this.color = null;
    this.description = null;
    this.id = null;
    this.name = null;
    this.progression = null;
    this.type = null;
  }

  /**
   * Constructs a "TransitionState" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/TransitionState } object Optional instance to populate.
   * @return { module:model/TransitionState } The populated "TransitionState" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new TransitionState();
    }

    if (data.hasOwnProperty("color")) {
      object.color = ApiClient.convertToType(data["color"], "String");
    }
    if (data.hasOwnProperty("description")) {
      object.description = ApiClient.convertToType(
        data["description"],
        "String"
      );
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("progression")) {
      object.progression = ApiClient.convertToType(
        data["progression"],
        "Number"
      );
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
  }

  /**
   * @return { String }
   */
  getColor() {
    return this.color;
  }

  /**
   * @param { String } color
   */
  setColor(color) {
    this.color = color;
  }
  /**
   * @return { String }
   */
  getDescription() {
    return this.description;
  }

  /**
   * @param { String } description
   */
  setDescription(description) {
    this.description = description;
  }
  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { String }
   */
  getName() {
    return this.name;
  }

  /**
   * @param { String } name
   */
  setName(name) {
    this.name = name;
  }
  /**
   * @return { Number }
   */
  getProgression() {
    return this.progression;
  }

  /**
   * @param { Number } progression
   */
  setProgression(progression) {
    this.progression = progression;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }
}
