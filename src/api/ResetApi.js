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
import EmailData from '../model/EmailData';
import Error from '../model/Error';

/**
 * Reset service.
 * @module api/ResetApi
 * @version 1.19.1
 */
export default class ResetApi extends ApiClient {
    /**
     * @class
     * { string } basePath To override basePath.
     * { object } headers Additional headers for the instance.
     * { int } timeout Number in seconds before timeout.
     */
    constructor(
        basePath = null,
        headers = null,
        timeout = null
    ) {
        super(basePath, headers, timeout);
    }

    /**
     * Create one Reset resource.
     * @param { String } xKeyclicApp
     * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/EmailData } emailData
     */
    postReset(
        returnType = null,
        options,
    ) {

        let {
            xKeyclicApp,
            acceptLanguage,
            xKeyclicAppVersion,
            emailData,
        } = options;


        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling postReset');
        }



        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }



        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }

        // verify the null value of parameter 'emailData'
        if (typeof emailData === 'undefined') {
            emailData = null;
        }



        let pathParams = {
        };

        let bodyParam = emailData;

        let queryParams = {
        };

        let headerParams = {
            'accept-language': acceptLanguage,
            'x-keyclic-app': xKeyclicApp,
            'x-keyclic-app-version': xKeyclicAppVersion,
        };

        let credentialParams = null;

        let authNames = [
        ];

        let contentTypes = [
            'application/json;charset=UTF-8',
        ];

        let accepts = [
            'application/hal+json;charset=UTF-8',
        ];

        return this.callApi(
            '/security/password/change-request',
            'POST',
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
