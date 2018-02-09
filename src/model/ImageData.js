/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 *  <techies@keyclic.com>
 *
 * This class is auto generated by the swagger code generator program with templates of Keyclic.
 * https://github.com/swagger-api/swagger-codegen.git
 * https://github.com/Keyclic/app-sdk.git
 * Do not edit the class manually.
 */


import ApiClient from '../ApiClient';




/**
 * The ImageData model module.
 * @module model/ImageData
 * @version 1.19.1
 */
export default class ImageData  {
    /**
     * Constructs a new "ImageData".
     * @alias module:model/ImageData
     * @class

     * @param image { Blob }

     */
    constructor(

        image,

    ) {

        this.image = image;

    }

    /**
    * Constructs a "ImageData" from a plain JavaScript object.
    * @param { object } data The plain JavaScript object bearing properties of interest.
    * @param { module:model/ImageData } object Optional instance to populate.
    * @return { module:model/ImageData } The populated "ImageData" instance.
    */
    static constructFromData(
        data,
        object = null,
    ) {
        if (data === null) {
            throw new Error('No data to build object');
        }

        if (object === null) {
            object = new ImageData();
        }

        if (data.hasOwnProperty('image')) {
            object.image = ApiClient.convertToType(data.image, 'Blob');
        }

        return object;
    }



}



