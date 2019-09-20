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
 * The PlaceData model module.
 * @module model/PlaceData
 */
export default class PlaceData {
  /**
     * Constructs a new "PlaceData".
     * @alias module:model/PlaceData
     * @class
    
     * @param name { String }
    
     * @param polygon { String }
    
     * @param organization { String }
    
     */
  constructor(
    name,

    polygon,

    organization
  ) {
    this.name = name;
    this.branchCode = null;
    this.polygon = polygon;
    this.organization = organization;
  }

  /**
   * Constructs a "PlaceData" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceData } object Optional instance to populate.
   * @return { module:model/PlaceData } The populated "PlaceData" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceData();
    }

    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("branchCode")) {
      object.branchCode = ApiClient.convertToType(data["branchCode"], "String");
    }
    if (data.hasOwnProperty("polygon")) {
      object.polygon = ApiClient.convertToType(data["polygon"], "String");
    }
    if (data.hasOwnProperty("organization")) {
      object.organization = ApiClient.convertToType(
        data["organization"],
        "String"
      );
    }

    return object;
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
   * @return { String }
   */
  getBranchCode() {
    return this.branchCode;
  }

  /**
   * @param { String } branchCode
   */
  setBranchCode(branchCode) {
    this.branchCode = branchCode;
  }
  /**
   * @return { String }
   */
  getPolygon() {
    return this.polygon;
  }

  /**
   * @param { String } polygon
   */
  setPolygon(polygon) {
    this.polygon = polygon;
  }
  /**
   * @return { String }
   */
  getOrganization() {
    return this.organization;
  }

  /**
   * @param { String } organization
   */
  setOrganization(organization) {
    this.organization = organization;
  }
}
