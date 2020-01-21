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
import CheckpointLinks from "./CheckpointLinks";

/**
 * The Checkpoint model module.
 * @module model/Checkpoint
 */
export default class Checkpoint {
  /**
     * Constructs a new "Checkpoint".
     * @alias module:model/Checkpoint
     * @class
    
     */
  constructor() {
    this.createdAt = null;
    this.state = [];
    this.links = null;

    this.linksType = CheckpointLinks;
  }

  /**
   * Constructs a "Checkpoint" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Checkpoint } object Optional instance to populate.
   * @return { module:model/Checkpoint } The populated "Checkpoint" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Checkpoint();
    }

    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("state")) {
      object.state = ApiClient.convertToType(data["state"], "['String']");
    }
    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }

    return object;
  }

  /**
   * @return { Date }
   */
  getCreatedAt() {
    return this.createdAt;
  }

  /**
   * @return { Array.<String> }
   */
  getState() {
    return this.state;
  }

  /**
   * @param { Array.<String> } state
   */
  setState(state) {
    this.state = state;
  }
  /**
   * @return { module:model/CheckpointLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/CheckpointLinks } links
   */
  setLinks(links) {
    this.links = links;
  }
}
