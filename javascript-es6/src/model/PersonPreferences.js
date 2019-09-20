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
 * The PersonPreferences model module.
 * @module model/PersonPreferences
 */
export default class PersonPreferences {
  /**
     * Constructs a new "PersonPreferences".
     * @alias module:model/PersonPreferences
     * @class
    
     * @param messageEmailEnabled { Boolean }
    
     * @param messagePushEnabled { Boolean }
    
     */
  constructor(
    messageEmailEnabled,

    messagePushEnabled
  ) {
    this.messageEmailEnabled = messageEmailEnabled;
    this.messagePushEnabled = messagePushEnabled;
  }

  /**
   * Constructs a "PersonPreferences" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonPreferences } object Optional instance to populate.
   * @return { module:model/PersonPreferences } The populated "PersonPreferences" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonPreferences();
    }

    if (data.hasOwnProperty("messageEmailEnabled")) {
      object.messageEmailEnabled = ApiClient.convertToType(
        data["messageEmailEnabled"],
        "Boolean"
      );
    }
    if (data.hasOwnProperty("messagePushEnabled")) {
      object.messagePushEnabled = ApiClient.convertToType(
        data["messagePushEnabled"],
        "Boolean"
      );
    }

    return object;
  }

  /**
   * @return { Boolean }
   */
  getMessageEmailEnabled() {
    return this.messageEmailEnabled;
  }

  /**
   * @param { Boolean } messageEmailEnabled
   */
  setMessageEmailEnabled(messageEmailEnabled) {
    this.messageEmailEnabled = messageEmailEnabled;
  }
  /**
   * @return { Boolean }
   */
  getMessagePushEnabled() {
    return this.messagePushEnabled;
  }

  /**
   * @param { Boolean } messagePushEnabled
   */
  setMessagePushEnabled(messagePushEnabled) {
    this.messagePushEnabled = messagePushEnabled;
  }
}
