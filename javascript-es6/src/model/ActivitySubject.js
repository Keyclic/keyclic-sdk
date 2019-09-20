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
 * The ActivitySubject model module.
 * @module model/ActivitySubject
 */
export default class ActivitySubject {
  /**
     * Constructs a new "ActivitySubject".
     * @alias module:model/ActivitySubject
     * @class
    
     */
  constructor() {
    this.id = null;
    this.type = null;
  }

  /**
   * Constructs a "ActivitySubject" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/ActivitySubject } object Optional instance to populate.
   * @return { module:model/ActivitySubject } The populated "ActivitySubject" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new ActivitySubject();
    }

    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }

    return object;
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
  getType() {
    return this.type;
  }
}
