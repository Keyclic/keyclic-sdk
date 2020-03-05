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
import Workflow from "../model/Workflow";

/**
 * Workflow service.
 * @module api/WorkflowApi
 */
export default class WorkflowApi extends ApiClient {
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
   * Retrieve one Workflow resource.
   * @param { String } xKeyclicApp
   * @param { String } workflow The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Workflow }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { Date } xDateTime
   * @param { String } xKeyclicAppVersion
   */
  getWorkflow(returnType = null, options, credentials = null) {
    if (returnType === null) {
      returnType = Workflow;
    }

    let {
      xKeyclicApp,
      workflow,
      acceptLanguage,
      xDateTime,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getWorkflow'
      );
    }

    // verify the required parameter 'workflow' is set
    if (typeof workflow === "undefined" || workflow === null) {
      throw new window.Error(
        'Missing the required parameter "workflow" when calling getWorkflow'
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
      workflow: workflow
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
      "/workflows/{workflow}",
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