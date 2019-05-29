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
import OccupantLinksPerson from "./OccupantLinksPerson";
import OccupantLinksPlace from "./OccupantLinksPlace";
import OccupantLinksSelf from "./OccupantLinksSelf";

/**
 * The OccupantLinks model module.
 * @module model/OccupantLinks
 */
export default class OccupantLinks {
  /**
     * Constructs a new "OccupantLinks".
     * @alias module:model/OccupantLinks
     * @class
    
     */
  constructor() {
    this.self = null;
    this.person = null;
    this.place = null;

    this.selfType = OccupantLinksSelf;
    this.personType = OccupantLinksPerson;
    this.placeType = OccupantLinksPlace;
  }

  /**
   * Constructs a "OccupantLinks" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/OccupantLinks } object Optional instance to populate.
   * @return { module:model/OccupantLinks } The populated "OccupantLinks" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new OccupantLinks();
    }

    if (data.hasOwnProperty("self")) {
      object.self = ApiClient.convertToType(data["self"], object.selfType);
    }
    if (data.hasOwnProperty("person")) {
      object.person = ApiClient.convertToType(
        data["person"],
        object.personType
      );
    }
    if (data.hasOwnProperty("place")) {
      object.place = ApiClient.convertToType(data["place"], object.placeType);
    }

    return object;
  }
}
