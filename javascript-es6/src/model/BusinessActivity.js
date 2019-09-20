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
import BusinessActivityLinks from "./BusinessActivityLinks";
import BusinessActivityMetadataSchema from "./BusinessActivityMetadataSchema";

/**
 * The BusinessActivity model module.
 * @module model/BusinessActivity
 */
export default class BusinessActivity {
  /**
     * Constructs a new "BusinessActivity".
     * @alias module:model/BusinessActivity
     * @class
    
     * @param name { String }
    
     */
  constructor(name) {
    this.links = null;
    this.alternateName = null;
    this.createdAt = null;
    this.id = null;
    this.metadataSchema = null;
    this.name = name;
    this.type = null;
    this.updatedAt = null;

    this.linksType = BusinessActivityLinks;
    this.metadataSchemaType = BusinessActivityMetadataSchema;
  }

  /**
   * Constructs a "BusinessActivity" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/BusinessActivity } object Optional instance to populate.
   * @return { module:model/BusinessActivity } The populated "BusinessActivity" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new BusinessActivity();
    }

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("alternateName")) {
      object.alternateName = ApiClient.convertToType(
        data["alternateName"],
        "String"
      );
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("metadataSchema")) {
      object.metadataSchema = ApiClient.convertToType(
        data["metadataSchema"],
        object.metadataSchemaType
      );
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }
    if (data.hasOwnProperty("type")) {
      object.type = ApiClient.convertToType(data["type"], "String");
    }
    if (data.hasOwnProperty("updatedAt")) {
      object.updatedAt = ApiClient.convertToType(data["updatedAt"], "Date");
    }

    return object;
  }

  /**
   * @return { module:model/BusinessActivityLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/BusinessActivityLinks } links
   */
  setLinks(links) {
    this.links = links;
  }
  /**
   * @return { String }
   */
  getAlternateName() {
    return this.alternateName;
  }

  /**
   * @param { String } alternateName
   */
  setAlternateName(alternateName) {
    this.alternateName = alternateName;
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
  getId() {
    return this.id;
  }

  /**
   * @return { module:model/BusinessActivityMetadataSchema }
   */
  getMetadataSchema() {
    return this.metadataSchema;
  }

  /**
   * @param { module:model/BusinessActivityMetadataSchema } metadataSchema
   */
  setMetadataSchema(metadataSchema) {
    this.metadataSchema = metadataSchema;
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
  getType() {
    return this.type;
  }

  /**
   * @return { Date }
   */
  getUpdatedAt() {
    return this.updatedAt;
  }
}
