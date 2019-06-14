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
import PersonLinksImage from "./PersonLinksImage";
import PersonLinksMemberOf from "./PersonLinksMemberOf";
import PersonLinksSelf from "./PersonLinksSelf";

/**
 * The PersonLinks model module.
 * @module model/PersonLinks
 */
export default class PersonLinks {
  /**
     * Constructs a new "PersonLinks".
     * @alias module:model/PersonLinks
     * @class
    
     */
  constructor() {
    this.self = null;
    this.image = null;
    this.memberOf = null;

    this.selfType = PersonLinksSelf;
    this.imageType = PersonLinksImage;
    this.memberOfType = PersonLinksMemberOf;
  }

  /**
   * Constructs a "PersonLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PersonLinks } object Optional instance to populate.
   * @return { module:model/PersonLinks } The populated "PersonLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PersonLinks();
    }

    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }
    if (data.hasOwnProperty("image")) {
      object.image = ApiClient.convertToType(data["image"], object.imageType);
    }
    if (data.hasOwnProperty("memberOf")) {
      object.memberOf = ApiClient.convertToType(
        data["memberOf"],
        object.memberOfType
      );
    }

    return object;
  }
}