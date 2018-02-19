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

import ApiClient from '../ApiClient';
import Error from '../model/Error';
import PasswordData from '../model/PasswordData';

/**
 * Change service.
 * @module api/ChangeApi
 */
export default class ChangeApi extends ApiClient {
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
     * Create one Change resource.
     * @param { String } xKeyclicApp
     * @param { String } token
     * @param { Object } returnType The required type to return; can be a string for simple types or the constructor for a complex type (default to null).
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion
     * @param { module:model/PasswordData } passwordData
     */
    postChangeByToken(
        returnType = null,
        options,
    ) {
        let {
            xKeyclicApp,
            token,
            acceptLanguage,
            xKeyclicAppVersion,
            passwordData,
        } = options;

        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling postChangeByToken');
        }

        // verify the required parameter 'token' is set
        if (typeof token === 'undefined' || token === null) {
            throw new window.Error('Missing the required parameter "token" when calling postChangeByToken');
        }

        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR"; // eslint-disable-line quotes
        }

        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }

        // verify the null value of parameter 'passwordData'
        if (typeof passwordData === 'undefined') {
            passwordData = null;
        }

        let pathParams = {
            'token': token,
        };

        let bodyParam = passwordData;

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
            '/security/password/change/{token}',
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
