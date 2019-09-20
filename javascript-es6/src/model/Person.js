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
    
     */
  constructor(optIn) {
    this.links = null;
    this.createdAt = null;
    this.email = null;
    this.familyName = null;
    this.givenName = null;
    this.id = null;
    this.jobTitle = null;
    this.optIn = optIn;
    this.preferences = null;
    this.telephone = null;
    this.type = null;
    this.updatedAt = null;
    this.username = null;

    this.linksType = PersonLinks;
    this.preferencesType = PersonPreferences;
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

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("email")) {
      object.email = ApiClient.convertToType(data["email"], "String");
    }
    if (data.hasOwnProperty("familyName")) {
      object.familyName = ApiClient.convertToType(data["familyName"], "String");
    }
    if (data.hasOwnProperty("givenName")) {
      object.givenName = ApiClient.convertToType(data["givenName"], "String");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
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
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("updatedAt")) {
      object.updatedAt = ApiClient.convertToType(data["updatedAt"], "Date");
    }
    if (data.hasOwnProperty("username")) {
      object.username = ApiClient.convertToType(data["username"], "String");
    }

    return object;
  }

  /**
   * @return { module:model/PersonLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/PersonLinks } links
   */
  setLinks(links) {
    this.links = links;
  }
  /**
   * @return { Date }
   */
  getCreatedAt() {
    return this.createdAt;
  }

  /**
   * @return { String }
   */
  getEmail() {
    return this.email;
  }

  /**
   * @param { String } email
   */
  setEmail(email) {
    this.email = email;
  }
  /**
   * @return { String }
   */
  getFamilyName() {
    return this.familyName;
  }

  /**
   * @param { String } familyName
   */
  setFamilyName(familyName) {
    this.familyName = familyName;
  }
  /**
   * @return { String }
   */
  getGivenName() {
    return this.givenName;
  }

  /**
   * @param { String } givenName
   */
  setGivenName(givenName) {
    this.givenName = givenName;
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
  getJobTitle() {
    return this.jobTitle;
  }

  /**
   * @param { String } jobTitle
   */
  setJobTitle(jobTitle) {
    this.jobTitle = jobTitle;
  }
  /**
   * @return { Boolean }
   */
  getOptIn() {
    return this.optIn;
  }

  /**
   * @param { Boolean } optIn
   */
  setOptIn(optIn) {
    this.optIn = optIn;
  }
  /**
   * @return { module:model/PersonPreferences }
   */
  getPreferences() {
    return this.preferences;
  }

  /**
   * @param { module:model/PersonPreferences } preferences
   */
  setPreferences(preferences) {
    this.preferences = preferences;
  }
  /**
   * @return { String }
   */
  getTelephone() {
    return this.telephone;
  }

  /**
   * @param { String } telephone
   */
  setTelephone(telephone) {
    this.telephone = telephone;
  }
  /**
   * @return { String }
   */
  getType() {
    return this.type;
  }

  /**
   * @return { Date }
   */
  getUpdatedAt() {
    return this.updatedAt;
  }

  /**
   * @return { String }
   */
  getUsername() {
    return this.username;
  }

  /**
   * @param { String } username
   */
  setUsername(username) {
    this.username = username;
  }
}
