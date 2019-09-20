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
import Place from "./Place";

/**
 * The PlaceCollection model module.
 * @module model/PlaceCollection
 */
export default class PlaceCollection {
  /**
     * Constructs a new "PlaceCollection".
     * @alias module:model/PlaceCollection
     * @class
    
     */
  constructor() {
    this.items = [];

    this.itemsType = Place;
  }

  /**
   * Constructs a "PlaceCollection" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceCollection } object Optional instance to populate.
   * @return { module:model/PlaceCollection } The populated "PlaceCollection" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceCollection();
    }

    if (data.hasOwnProperty("items")) {
      object.items = ApiClient.convertToType(data["items"], [object.itemsType]);
    }

    return object;
  }

  /**
   * @return { Array.<module:model/Place> }
   */
  getItems() {
    return this.items;
  }

  /**
   * @param { Array.<module:model/Place> } items
   */
  setItems(items) {
    this.items = items;
  }
}
