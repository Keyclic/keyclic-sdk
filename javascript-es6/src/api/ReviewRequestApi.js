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
import ReviewRequest from "../model/ReviewRequest";

/**
 * ReviewRequest service.
 * @module api/ReviewRequestApi
 */
export default class ReviewRequestApi extends ApiClient {
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
   * Retrieve one ReviewRequest resource.
   * @param { String } xKeyclicApp
   * @param { String } reviewRequest The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { ReviewRequest }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  getReviewRequest(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = ReviewRequest;
    }

    let {
      xKeyclicApp,
      reviewRequest,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getReviewRequest'
      );
    }

    // verify the required parameter 'reviewRequest' is set
    if (typeof reviewRequest === "undefined" || reviewRequest === null) {
      throw new window.Error(
        'Missing the required parameter "reviewRequest" when calling getReviewRequest'
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
      reviewRequest: reviewRequest
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
      "/review-requests/{reviewRequest}",
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
