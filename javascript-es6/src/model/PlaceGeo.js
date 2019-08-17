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
import PlaceGeoCentroid from "./PlaceGeoCentroid";
import PlaceGeoPolygon from "./PlaceGeoPolygon";

/**
 * The PlaceGeo model module.
 * @module model/PlaceGeo
 */
export default class PlaceGeo {
  /**
     * Constructs a new "PlaceGeo".
     * @alias module:model/PlaceGeo
     * @class
    
     * @param polygon { module:model/PlaceGeoPolygon }
    
     */
  constructor(polygon) {
    this.centroid = null;
    this.elevation = null;
    this.polygon = polygon;

    this.centroidType = PlaceGeoCentroid;
    this.polygonType = PlaceGeoPolygon;
  }

  /**
   * Constructs a "PlaceGeo" from a plain JavaScript object.
   * @param { object } data The plain JavaScript object bearing properties of interest.
   * @param { module:model/PlaceGeo } object Optional instance to populate.
   * @return { module:model/PlaceGeo } The populated "PlaceGeo" instance.
   */
  static constructFromData(data, object = null) {
    if (data === null) {
      throw new Error("No data to build object");
    }

    if (object === null) {
      object = new PlaceGeo();
    }

    if (data.hasOwnProperty("centroid")) {
      object.centroid = ApiClient.convertToType(
        data["centroid"],
        object.centroidType
      );
    }
    if (data.hasOwnProperty("elevation")) {
      object.elevation = ApiClient.convertToType(data["elevation"], "Number");
    }
    if (data.hasOwnProperty("polygon")) {
      object.polygon = ApiClient.convertToType(
        data["polygon"],
        object.polygonType
      );
    }

    return object;
  }
}
