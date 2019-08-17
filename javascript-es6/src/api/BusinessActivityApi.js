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
import BusinessActivity from "../model/BusinessActivity";
import BusinessActivityPagination from "../model/BusinessActivityPagination";
import Error from "../model/Error";

/**
 * BusinessActivity service.
 * @module api/BusinessActivityApi
 */
export default class BusinessActivityApi extends ApiClient {
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
   * Retrieve all BusinessActivity resources.
   * @param { String } xKeyclicApp
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { BusinessActivityPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { String } geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
   * @param { module:model/String } order   (default to desc)
   * @param { String } organization The identifier of the resource.
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   */
  cgetBusinessActivities(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = BusinessActivityPagination;
    }

    let {
      xKeyclicApp,
      acceptLanguage,
      xKeyclicAppVersion,
      after,
      before,
      geoPoint,
      geoCoordinates,
      order,
      organization,
      page,
      limit
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetBusinessActivities'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the default value of parameter 'order'
    if (typeof order === "undefined" || order === null) {
      order = "desc";
    }

    // verify the default value of parameter 'page'
    if (typeof page === "undefined" || page === null) {
      page = 1;
    }

    // verify the default value of parameter 'limit'
    if (typeof limit === "undefined" || limit === null) {
      limit = 10;
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'geoPoint'
    if (typeof geoPoint === "undefined") {
      geoPoint = null;
    }

    // verify the null value of parameter 'geoCoordinates'
    if (typeof geoCoordinates === "undefined") {
      geoCoordinates = null;
    }

    // verify the null value of parameter 'organization'
    if (typeof organization === "undefined") {
      organization = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetBusinessActivities'
      );
    }

    let pathParams = {};

    let bodyParam = null;

    let queryParams = {
      after: after,
      before: before,
      geo_point: geoPoint,
      geo_coordinates: geoCoordinates,
      order: order,
      organization: organization,
      page: page,
      limit: limit
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/businessactivities",
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
   * Retrieve one BusinessActivity resource.
   * @param { String } xKeyclicApp
   * @param { String } businessActivity The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { BusinessActivity }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getBusinessActivity(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = BusinessActivity;
    }

    let {
      xKeyclicApp,
      businessActivity,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getBusinessActivity'
      );
    }

    // verify the required parameter 'businessActivity' is set
    if (typeof businessActivity === "undefined" || businessActivity === null) {
      throw new window.Error(
        'Missing the required parameter "businessActivity" when calling getBusinessActivity'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling getBusinessActivity'
      );
    }

    let pathParams = {
      businessActivity: businessActivity
    };

    let bodyParam = null;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/businessactivities/{businessActivity}",
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
}
