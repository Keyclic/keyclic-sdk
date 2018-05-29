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

/**
 * Logo service.
 * @module api/LogoApi
 */
export default class LogoApi extends ApiClient {
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
     * Retrieve one Logo resource.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { String } width
     * @param { String } height
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { File }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     */
    getLogoByOrganizationAndWidthAndHeight(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = File;
        }

        let {
            xKeyclicApp,
            organization,
            width,
            height,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getLogoByOrganizationAndWidthAndHeight');
        }
        
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling getLogoByOrganizationAndWidthAndHeight');
        }
        
        // verify the required parameter 'width' is set
        if (typeof width === 'undefined' || width === null) {
            throw new window.Error('Missing the required parameter "width" when calling getLogoByOrganizationAndWidthAndHeight');
        }
        
        // verify the required parameter 'height' is set
        if (typeof height === 'undefined' || height === null) {
            throw new window.Error('Missing the required parameter "height" when calling getLogoByOrganizationAndWidthAndHeight');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling getLogoByOrganizationAndWidthAndHeight');
        }

        let pathParams = {
            'organization': organization,
            'width': width,
            'height': height,
        };

        let bodyParam = null;

        let queryParams = {
        };

        let headerParams = {
            'accept-language': acceptLanguage,
            'x-keyclic-app': xKeyclicApp,
            'x-keyclic-app-version': xKeyclicAppVersion,
        };

        let credentialParams = credentials;

        let authNames = [
            'bearer',
        ];

        let contentTypes = [
            'application/json;charset=UTF-8',
        ];

        let accepts = [
            'application/hal+json;charset=UTF-8',
        ];

        return this.callApi(
            '/organizations/{organization}/logo/{width}/{height}',
            'GET',
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
