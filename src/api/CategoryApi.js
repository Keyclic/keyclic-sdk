/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 1.0
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import ApiClient from '../ApiClient';
import Category from '../model/Category';
import CategoryData from '../model/CategoryData';
import CategoryPagination from '../model/CategoryPagination';
import CategoryPatch from '../model/CategoryPatch';
import Error from '../model/Error';

/**
 * Category service.
 * @module api/CategoryApi
 * @version 1.0
 */
export default class CategoryApi extends ApiClient {
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
     * Retrieve all Category resources.
     * @param { String } xKeyclicApp 
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { CategoryPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { String } organization The identifier of the resource formatted as GUID string. 
     * @param { String } geoCoordinates  
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { Date } after  
     * @param { Date } before  
     * @param { String } searchName  
     * @param { String } searchColor  
     * @param { String } searchIcon  
     * @param { String } searchIdentificationNumber  
     */
    cgetCategories(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = CategoryPagination;
        }

        let {
            xKeyclicApp,
            acceptLanguage,
            xKeyclicAppVersion,
            organization,
            geoCoordinates,
            page,
            limit,
            order,
            after,
            before,
            searchName,
            searchColor,
            searchIcon,
            searchIdentificationNumber,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling cgetCategories');
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
        
        // verify the null value of parameter 'organization'
        if (typeof organization === 'undefined') {
            organization = null;
        }
        
        // verify the null value of parameter 'geoCoordinates'
        if (typeof geoCoordinates === 'undefined') {
            geoCoordinates = null;
        }
        
        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }
        
        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }
        
        // verify the null value of parameter 'searchName'
        if (typeof searchName === 'undefined') {
            searchName = null;
        }
        
        // verify the null value of parameter 'searchColor'
        if (typeof searchColor === 'undefined') {
            searchColor = null;
        }
        
        // verify the null value of parameter 'searchIcon'
        if (typeof searchIcon === 'undefined') {
            searchIcon = null;
        }
        
        // verify the null value of parameter 'searchIdentificationNumber'
        if (typeof searchIdentificationNumber === 'undefined') {
            searchIdentificationNumber = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling cgetCategories');
        }

        let pathParams = {
        };

        let bodyParam = null;

        let queryParams = {
            'organization': organization,
            'geo_coordinates': geoCoordinates,
            'page': page,
            'limit': limit,
            'order': order,
            'after': after,
            'before': before,
            'search[name]': searchName,
            'search[color]': searchColor,
            'search[icon]': searchIcon,
            'search[identificationNumber]': searchIdentificationNumber,
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
            '/categories',
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
     * Retrieve all Category resources.
     * @param { String } xKeyclicApp 
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { CategoryPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { String } geoCoordinates  
     * @param { Number } page Page of the overview.  (default to 1)
     * @param { Number } limit Page of the overview.  (default to 10)
     * @param { module:model/String } order   (default to desc)
     * @param { Date } after  
     * @param { Date } before  
     * @param { String } searchName  
     * @param { String } searchColor  
     * @param { String } searchIcon  
     * @param { String } searchIdentificationNumber  
     */
    cgetCategoriesByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = CategoryPagination;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            geoCoordinates,
            page,
            limit,
            order,
            after,
            before,
            searchName,
            searchColor,
            searchIcon,
            searchIdentificationNumber,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling cgetCategoriesByOrganization');
        }
        
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling cgetCategoriesByOrganization');
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
        
        // verify the null value of parameter 'geoCoordinates'
        if (typeof geoCoordinates === 'undefined') {
            geoCoordinates = null;
        }
        
        // verify the null value of parameter 'after'
        if (typeof after === 'undefined') {
            after = null;
        }
        
        // verify the null value of parameter 'before'
        if (typeof before === 'undefined') {
            before = null;
        }
        
        // verify the null value of parameter 'searchName'
        if (typeof searchName === 'undefined') {
            searchName = null;
        }
        
        // verify the null value of parameter 'searchColor'
        if (typeof searchColor === 'undefined') {
            searchColor = null;
        }
        
        // verify the null value of parameter 'searchIcon'
        if (typeof searchIcon === 'undefined') {
            searchIcon = null;
        }
        
        // verify the null value of parameter 'searchIdentificationNumber'
        if (typeof searchIdentificationNumber === 'undefined') {
            searchIdentificationNumber = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling cgetCategoriesByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = null;

        let queryParams = {
            'geo_coordinates': geoCoordinates,
            'page': page,
            'limit': limit,
            'order': order,
            'after': after,
            'before': before,
            'search[name]': searchName,
            'search[color]': searchColor,
            'search[icon]': searchIcon,
            'search[identificationNumber]': searchIdentificationNumber,
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
            '/organizations/{organization}/categories',
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
     * Retrieve one Category resource.
     * @param { String } xKeyclicApp 
     * @param { String } category The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     */
    getCategory(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Category;
        }

        let {
            xKeyclicApp,
            category,
            acceptLanguage,
            xKeyclicAppVersion,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling getCategory');
        }
        
        // verify the required parameter 'category' is set
        if (typeof category === 'undefined' || category === null) {
            throw new window.Error('Missing the required parameter "category" when calling getCategory');
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
            throw new window.Error('Missing the required parameter "credentials" when calling getCategory');
        }

        let pathParams = {
            'category': category,
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
            '/categories/{category}',
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
     * Edit one Category resource.
     * @param { String } xKeyclicApp 
     * @param { String } category The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { module:model/CategoryPatch } categoryPatch  
     */
    patchCategory(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Category;
        }

        let {
            xKeyclicApp,
            category,
            acceptLanguage,
            xKeyclicAppVersion,
            categoryPatch,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling patchCategory');
        }
        
        // verify the required parameter 'category' is set
        if (typeof category === 'undefined' || category === null) {
            throw new window.Error('Missing the required parameter "category" when calling patchCategory');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        
        // verify the null value of parameter 'categoryPatch'
        if (typeof categoryPatch === 'undefined') {
            categoryPatch = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling patchCategory');
        }

        let pathParams = {
            'category': category,
        };

        let bodyParam = categoryPatch;

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
            '/categories/{category}',
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

    /**
     * Create one Category resource.
     * @param { String } xKeyclicApp 
     * @param { String } organization The identifier of the resource formatted as GUID string.
     * @param { Object } credentials The required credentials with good properties to use different types of authentication.
     * @param { Category }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @param { module:model/String } acceptLanguage   (default to fr-FR)
     * @param { String } xKeyclicAppVersion  
     * @param { module:model/CategoryData } categoryData  
     */
    postCategoryByOrganization(
        returnType = null,
        options,
        credentials,
    ) {
        if (returnType === null) {
            returnType = Category;
        }

        let {
            xKeyclicApp,
            organization,
            acceptLanguage,
            xKeyclicAppVersion,
            categoryData,
        } = options;

        
        // verify the required parameter 'xKeyclicApp' is set
        if (typeof xKeyclicApp === 'undefined' || xKeyclicApp === null) {
            throw new window.Error('Missing the required parameter "xKeyclicApp" when calling postCategoryByOrganization');
        }
        
        // verify the required parameter 'organization' is set
        if (typeof organization === 'undefined' || organization === null) {
            throw new window.Error('Missing the required parameter "organization" when calling postCategoryByOrganization');
        }
        

        
        // verify the default value of parameter 'acceptLanguage'
        if (typeof acceptLanguage === 'undefined' || acceptLanguage === null) {
            acceptLanguage = "fr-FR";  // eslint-disable-line quotes
        }
        

        
        // verify the null value of parameter 'xKeyclicAppVersion'
        if (typeof xKeyclicAppVersion === 'undefined') {
            xKeyclicAppVersion = null;
        }
        
        // verify the null value of parameter 'categoryData'
        if (typeof categoryData === 'undefined') {
            categoryData = null;
        }
        

        if (typeof credentials === 'undefined' || credentials === null) {
            throw new window.Error('Missing the required parameter "credentials" when calling postCategoryByOrganization');
        }

        let pathParams = {
            'organization': organization,
        };

        let bodyParam = categoryData;

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
            '/organizations/{organization}/categories',
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
