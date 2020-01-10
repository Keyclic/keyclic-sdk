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
import Error from "../model/Error";
import Occupant from "../model/Occupant";
import OccupantData from "../model/OccupantData";

/**
 * Occupant service.
 * @module api/OccupantApi
 */
export default class OccupantApi extends ApiClient {
  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  constructor(basePath = null, headers = null, timeout = null) {
    super(basePath, headers, timeout);
  }

  /**
   * Remove one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { String } occupant The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  deleteOccupant(returnType = null, options, credentials = null) {
    let {
      xKeyclicApp,
      occupant,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling deleteOccupant'
      );
    }

    // verify the required parameter 'occupant' is set
    if (typeof occupant === "undefined" || occupant === null) {
      throw new window.Error(
        'Missing the required parameter "occupant" when calling deleteOccupant'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      occupant: occupant
    };

    const bodyParam = null;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/occupants/{occupant}",
      "DELETE",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Retrieve one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { String } occupant The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Occupant }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  getOccupant(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Occupant;
    }

    let {
      xKeyclicApp,
      occupant,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getOccupant'
      );
    }

    // verify the required parameter 'occupant' is set
    if (typeof occupant === "undefined" || occupant === null) {
      throw new window.Error(
        'Missing the required parameter "occupant" when calling getOccupant'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {
      occupant: occupant
    };

    const bodyParam = null;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/occupants/{occupant}",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Create one Occupant resource.
   * @param { String } xKeyclicApp
   * @param { module:model/OccupantData } occupantData
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Occupant }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  postOccupant(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Occupant;
    }

    let {
      xKeyclicApp,
      occupantData,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postOccupant'
      );
    }

    // verify the required parameter 'occupantData' is set
    if (typeof occupantData === "undefined" || occupantData === null) {
      throw new window.Error(
        'Missing the required parameter "occupantData" when calling postOccupant'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xDateTime'
    if (typeof xDateTime === "undefined") {
      xDateTime = null;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    const pathParams = {};

    const bodyParam = occupantData;

    const queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-date-time": xDateTime,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    const credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/occupants",
      "POST",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }
}
