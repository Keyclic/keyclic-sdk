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
 * The DocumentFile model module.
 * @module model/DocumentFile
 */
export default class DocumentFile {
  /**
     * Constructs a new "DocumentFile".
     * @alias module:model/DocumentFile
     * @class
    
     * @param contentType { module:model/DocumentFile.ContentTypeEnum }
    
     */
  constructor(contentType) {
    this.contentType = contentType;
    this.name = null;
  }

  /**
   * Constructs a "DocumentFile" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/DocumentFile } object Optional instance to populate.
   * @return { module:model/DocumentFile } The populated "DocumentFile" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new DocumentFile();
    }

    if (data.hasOwnProperty("contentType")) {
      object.contentType = ApiClient.convertToType(
        data["contentType"],
        "String"
      );
    }
    if (data.hasOwnProperty("name")) {
      object.name = ApiClient.convertToType(data["name"], "String");
    }

    return object;
  }

  /**
   * @return { module:model/DocumentFile.ContentTypeEnum }
   */
  getContentType() {
    return this.contentType;
  }

  /**
   * @param { module:model/DocumentFile.ContentTypeEnum } contentType
   */
  setContentType(contentType) {
    this.contentType = contentType;
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
   * Allowed values for the "contentType" property.
   * @enum { String }
   */
  static ContentTypeEnum = {
    /**
     * value: "text/csv"
     * @const
     * @readonly
     */
    "text/csv": "text/csv",
    /**
     * value: "application/msword"
     * @const
     * @readonly
     */
    "application/msword": "application/msword",
    /**
     * value: "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
     * @const
     * @readonly
     */
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    /**
     * value: "image/jpeg"
     * @const
     * @readonly
     */
    "image/jpeg": "image/jpeg",
    /**
     * value: "image/jpg"
     * @const
     * @readonly
     */
    "image/jpg": "image/jpg",
    /**
     * value: "application/pdf"
     * @const
     * @readonly
     */
    "application/pdf": "application/pdf",
    /**
     * value: "image/png"
     * @const
     * @readonly
     */
    "image/png": "image/png",
    /**
     * value: "text/plain"
     * @const
     * @readonly
     */
    "text/plain": "text/plain",
    /**
     * value: "application/vnd.ms-excel"
     * @const
     * @readonly
     */
    "application/vnd.ms-excel": "application/vnd.ms-excel",
    /**
     * value: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
     * @const
     * @readonly
     */
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet":
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    /**
     * value: "application/zip"
     * @const
     * @readonly
     */
    "application/zip": "application/zip"
  };
}
