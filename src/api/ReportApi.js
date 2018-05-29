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
import Report from '../model/Report';
import ReportPagination from '../model/ReportPagination';
import ReportPatch from '../model/ReportPatch';

/**
 * Report service.
 * @module api/ReportApi
 */
export default class ReportApi extends ApiClient {
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
     * Retrieve all Report resources.
     * @param { String } xKeyclicApp
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { ReportPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { String } state  
     * @param { String } place The identifier of the resource formatted as GUID string. 
     * @param { String } category The identifier of the resource formatted as GUID string. 
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { Date } after  
     * @param { Date } before  
     */
    cgetReportsByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = ReportPagination;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            state,
            place,
            category,
            page,
            limit,
            order,
            after,
            before,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling cgetReportsByOrganization');
        }
        
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling cgetReportsByOrganization');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        
        // verify the default value of parameter 'page'
        if (typeof page === 'undefined' || page === null) {
            page = 1;  // eslint-disable-line quotes
        }
        
        // verify the default value of parameter 'limit'
        if (typeof limit === 'undefined' || limit === null) {
            limit = 10;  // eslint-disable-line quotes
        }
        
        // verify the default value of parameter 'order'
        if (typeof order === 'undefined' || order === null) {
            order = "desc";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        
        // verify the null value of parameter 'state'
        if (typeof state === 'undefined') {
            state = null;
        }
        
        // verify the null value of parameter 'place'
        if (typeof place === 'undefined') {
            place = null;
        }
        
        // verify the null value of parameter 'category'
        if (typeof category === 'undefined') {
            category = null;
        }
        
        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }
        
        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling cgetReportsByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'state': state,
            'place': place,
            'category': category,
            'page': page,
            'limit': limit,
            'order': order,
            'after': after,
            'before': before,
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
            '/organizations/{organization}/reports',
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

    /**
     * Retrieve one Report resource.
     * @param { String } xKeyclicApp
     * @param { String } report The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     */
    getReport(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Report;
        }

        let {
            xKeyclicApp,
            report,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getReport');
        }
        
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new window.Error('Missing the required parameter "report" when calling getReport');
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
            throw new window.Error('Missing the required parameter "credentials" when calling getReport');
        }

        let pathParams = {
            'report': report,
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
            '/reports/{report}',
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

    /**
     * Edit one Report resource.
     * @param { String } xKeyclicApp
     * @param { String } report The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Report }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { module:model/ReportPatch } reportPatch  
     */
    patchReport(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Report;
        }

        let {
            xKeyclicApp,
            report,
            acceptLanguage,
            xKeyclicAppVersion,
            reportPatch,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling patchReport');
        }
        
        // verify the required parameter 'report' is set
        if (typeof report === 'undefined' || report === null) {
            throw new window.Error('Missing the required parameter "report" when calling patchReport');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        
        // verify the null value of parameter 'reportPatch'
        if (typeof reportPatch === 'undefined') {
            reportPatch = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling patchReport');
        }

        let pathParams = {
            'report': report,
        };

        let bodyParam = reportPatch;

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
            '/reports/{report}',
            'PATCH',
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
