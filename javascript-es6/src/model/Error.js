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
import ErrorEmbedded from "./ErrorEmbedded";

/**
 * The Error model module.
 * @module model/Error
 */
export default class Error {
  /**
     * Constructs a new "Error".
     * @alias module:model/Error
     * @class
    
     */
  constructor() {
    this.message = null;
    this.total = null;
    this.embedded = null;

    this.embeddedType = ErrorEmbedded;
  }

  /**
   * Constructs a "Error" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Error } object Optional instance to populate.
   * @return { module:model/Error } The populated "Error" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Error();
    }

    if (data.hasOwnProperty("message")) {
      object.message = ApiClient.convertToType(data["message"], "String");
    }
    if (data.hasOwnProperty("total")) {
      object.total = ApiClient.convertToType(data["total"], "Number");
    }
    if (data.hasOwnProperty("_embedded")) {
      object.embedded = ApiClient.convertToType(
        data["_embedded"],
        object.embeddedType
      );
    }

    return object;
  }

  /**
   * @return { String }
   */
  getMessage() {
    return this.message;
  }

  /**
   * @param { String } message
   */
  setMessage(message) {
    this.message = message;
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
  /**
   * @return { module:model/ErrorEmbedded }
   */
  getEmbedded() {
    return this.embedded;
  }

  /**
   * @param { module:model/ErrorEmbedded } embedded
   */
  setEmbedded(embedded) {
    this.embedded = embedded;
  }
}
