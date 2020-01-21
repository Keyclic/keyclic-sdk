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
import DocumentFile from "./DocumentFile";
import DocumentLinks from "./DocumentLinks";
import DocumentPermission from "./DocumentPermission";

/**
 * The Document model module.
 * @module model/Document
 */
export default class Document {
  /**
     * Constructs a new "Document".
     * @alias module:model/Document
     * @class
    
     */
  constructor() {
    this.links = null;
    this.createdAt = null;
    this.file = null;
    this.id = null;
    this.permission = null;
    this.type = null;
    this.updatedAt = null;

    this.linksType = DocumentLinks;
    this.fileType = DocumentFile;
    this.permissionType = DocumentPermission;
  }

  /**
   * Constructs a "Document" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/Document } object Optional instance to populate.
   * @return { module:model/Document } The populated "Document" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new Document();
    }

    if (data.hasOwnProperty("_links")) {
      object.links = ApiClient.convertToType(data["_links"], object.linksType);
    }
    if (data.hasOwnProperty("createdAt")) {
      object.createdAt = ApiClient.convertToType(data["createdAt"], "Date");
    }
    if (data.hasOwnProperty("file")) {
      object.file = ApiClient.convertToType(data["file"], object.fileType);
    }
    if (data.hasOwnProperty("id")) {
      object.id = ApiClient.convertToType(data["id"], "String");
    }
    if (data.hasOwnProperty("permission")) {
      object.permission = ApiClient.convertToType(
        data["permission"],
        object.permissionType
      );
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
   * @return { module:model/DocumentLinks }
   */
  getLinks() {
    return this.links;
  }

  /**
   * @param { module:model/DocumentLinks } links
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
   * @return { module:model/DocumentFile }
   */
  getFile() {
    return this.file;
  }

  /**
   * @param { module:model/DocumentFile } file
   */
  setFile(file) {
    this.file = file;
  }
  /**
   * @return { String }
   */
  getId() {
    return this.id;
  }

  /**
   * @return { module:model/DocumentPermission }
   */
  getPermission() {
    return this.permission;
  }

  /**
   * @param { module:model/DocumentPermission } permission
   */
  setPermission(permission) {
    this.permission = permission;
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
