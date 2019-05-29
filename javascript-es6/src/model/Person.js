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
import PersonLinks from "./PersonLinks";
import PersonPreferences from "./PersonPreferences";

/**
 * The Person model module.
 * @module model/Person
 */
export default class Person {
  /**
     * Constructs a new "Person".
     * @alias module:model/Person
     * @class
    
     * @param optIn { Boolean }
    
     * @param preferences { module:model/PersonPreferences }
    
     * @param id { String }
    
     * @param createdAt { Date }
    
     * @param updatedAt { Date }
    
     */
  constructor(
    optIn,

    preferences,

    id,

    createdAt,

    updatedAt
  ) {
    this.familyName = null;
    this.givenName = null;
    this.jobTitle = null;
    this.optIn = optIn;
    this.preferences = preferences;
    this.telephone = null;
    this.id = id;
    this.username = null;
    this.email = null;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
    this.type = null;
    this.links = null;

    this.preferencesType = PersonPreferences;
    this.linksType = PersonLinks;
  }

  /**
   * Constructs a "Person" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Person } object Optional instance to populate.
   * @return { module:model/Person } The populated "Person" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Person();
    }

    if (data.hasOwnProperty("familyName")) {
      object.familyName = ApiClient.convertToType(data["familyName"], "String");
    }
    if (data.hasOwnProperty("givenName")) {
      object.givenName = ApiClient.convertToType(data["givenName"], "String");
    }
    if (data.hasOwnProperty("jobTitle")) {
      object.jobTitle = ApiClient.convertToType(data["jobTitle"], "String");
    }
    if (data.hasOwnProperty("optIn")) {
      object.optIn = ApiClient.convertToType(data["optIn"], "Boolean");
    }
    if (data.hasOwnProperty("preferences")) {
      object.preferences = ApiClient.convertToType(
        data["preferences"],
        object.preferencesType
      );
    }
    if (data.hasOwnProperty("telephone")) {
      object.telephone = ApiClient.convertToType(data["telephone"], "String");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("username")) {
      object.username = ApiClient.convertToType(data["username"], "String");
    }
    if (data.hasOwnProperty("email")) {
      object.email = ApiClient.convertToType(data["email"], "String");
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("updatedAt")) {
      object.updatedAt = ApiClient.convertToType(data["updatedAt"], "Date");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }

    return object;
  }
}
