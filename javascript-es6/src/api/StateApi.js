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
import Feedback from "../model/Feedback";
import FeedbackStatePatch from "../model/FeedbackStatePatch";
import Operation from "../model/Operation";
import OperationStatePatch from "../model/OperationStatePatch";
import Report from "../model/Report";
import ReportStatePatch from "../model/ReportStatePatch";

/**
 * State service.
 * @module api/StateApi
 */
export default class StateApi extends ApiClient {
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
   * Edit one State resource.
   * @param { String } xKeyclicApp
   * @param { String } feedback The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Feedback }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/FeedbackStatePatch } feedbackStatePatch
   */
  patchStateByFeedback(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Feedback;
    }

    let {
      xKeyclicApp,
      feedback,
      acceptLanguage,
      xKeyclicAppVersion,
      feedbackStatePatch
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling patchStateByFeedback'
      );
    }

    // verify the required parameter 'feedback' is set
    if (typeof feedback === "undefined" || feedback === null) {
      throw new window.Error(
        'Missing the required parameter "feedback" when calling patchStateByFeedback'
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

    // verify the null value of parameter 'feedbackStatePatch'
    if (typeof feedbackStatePatch === "undefined") {
      feedbackStatePatch = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling patchStateByFeedback'
      );
    }

    let pathParams = {
      feedback: feedback
    };

    let bodyParam = feedbackStatePatch;

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
      "/feedbacks/{feedback}/state",
      "PATCH",
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
   * Edit one State resource.
   * @param { String } xKeyclicApp
   * @param { String } operation The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Operation }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/OperationStatePatch } operationStatePatch
   */
  patchStateByOperation(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Operation;
    }

    let {
      xKeyclicApp,
      operation,
      acceptLanguage,
      xKeyclicAppVersion,
      operationStatePatch
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling patchStateByOperation'
      );
    }

    // verify the required parameter 'operation' is set
    if (typeof operation === "undefined" || operation === null) {
      throw new window.Error(
        'Missing the required parameter "operation" when calling patchStateByOperation'
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

    // verify the null value of parameter 'operationStatePatch'
    if (typeof operationStatePatch === "undefined") {
      operationStatePatch = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling patchStateByOperation'
      );
    }

    let pathParams = {
      operation: operation
    };

    let bodyParam = operationStatePatch;

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
      "/operations/{operation}/state",
      "PATCH",
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
   * Edit one State resource.
   * @param { String } xKeyclicApp
   * @param { String } report The identifier of the resource.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { module:model/ReportStatePatch } reportStatePatch
   */
  patchStateByReport(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Report;
    }

    let {
      xKeyclicApp,
      report,
      acceptLanguage,
      xKeyclicAppVersion,
      reportStatePatch
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling patchStateByReport'
      );
    }

    // verify the required parameter 'report' is set
    if (typeof report === "undefined" || report === null) {
      throw new window.Error(
        'Missing the required parameter "report" when calling patchStateByReport'
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

    // verify the null value of parameter 'reportStatePatch'
    if (typeof reportStatePatch === "undefined") {
      reportStatePatch = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling patchStateByReport'
      );
    }

    let pathParams = {
      report: report
    };

    let bodyParam = reportStatePatch;

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
      "/reports/{report}/state",
      "PATCH",
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
