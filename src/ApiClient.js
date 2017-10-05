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


import promise from 'es6-promise';
promise.polyfill();

import fetch from 'isomorphic-fetch';
import * as url from 'url';

/**
* @module ApiClient
* @version 1.0
*/

/**
* Manages low level client-server communications, parameter marshalling, etc. There should not be any need for an
* application to use this class directly - the *Api and model classes provide the public API for the service. The
* contents of this file should be regarded as internal but are documented for completeness.
* @alias module:ApiClient
* @class
*/
export default class ApiClient {
    constructor(
        basePath = null,
        headers = null,
        timeout = null
    ) {
        /**
         * The base URL against which to resolve every API call's (relative) path.
         * @type {String}
         * @default https://api.keyclic.com
         */
        this.basePath = basePath === null ? 'https://api.keyclic.com'.replace(/\/+$/, '') : basePath.replace(/\/+$/, '');

        /**
         * The authentication methods to be included for all API calls.
         * @type {String[]}
         */
        this.authentications = {
            'bearer': {
                'type': 'apiKey',
                'in': 'header',
                'name': 'Authorization',
            },
        };

        /**
         * The default HTTP headers to be included for all API calls.
         * @type {Object}
         * @default {}
         */
        this.defaultHeaders = {};

        /**
         * The HTTP headers to be specific for this instance.
         * @type {Object}
         * @default {}
         */
        this.headers = headers === null ? {} : headers;

        /**
         * The default HTTP timeout for all API calls.
         * @type {Number}
         * @default null
         */
        this.timeout = timeout;
    }

    /**
     * Applies authentication headers to the request.
     * @param {Object} options The configuration object created for next fetch call.
     * @param {String[]} authNames An array of authentication method names.
     * @param {Object} credentials An object with good properties to use different types of authentication.
     */
    applyAuthToRequest(options, authNames, credentials) {
        authNames.forEach((authName) => {
            let auth = this.authentications[authName];
            switch (auth.type) {
                case 'apiKey':
                    if (credentials.hasOwnProperty('accessToken') === false || typeof credentials.accessToken === 'undefined' || credentials.accessToken === null) {
                        throw new Error('ApiKey authentication claims an "accessToken" as credentials.');
                    }

                    options.headers.append(auth.name, 'Bearer ' + credentials.accessToken);
                    break;
                default:
                    throw new Error('Unknown authentication type: ' + auth.type);
            }
        });

        return options;
    }

    /**
     * Deserializes an HTTP response body into a value of the specified type.
     * @param { Object } data A response.json() object.
     * @param { String|String[]|Object } returnType The type to return. Pass a string for simple types
     * or the constructor function for a complex type. Pass an array containing the type name to return an array of that type. To
     * return an object, pass an object with one property whose name is the key type and whose value is the corresponding value type:
     * all properties on datacode will be converted to this type.
     * @returns { Object } A value of the specified type.
     */
    deserialize(data, returnType) {
        if (returnType === null) {
            return data;
        }

        return ApiClient.convertToType(data, returnType);
    }

    /**
     * Check code status of response
     */
    checkResponse(response) {
        if (response.status < 200 || response.status >= 300) {
            let error = new Error('Code status error: '+ response.status);
            error.status = response.status;
            error.response = response;
            throw error;
        }
    }

    /**
     * Builds full URI by appending the given path to the base URL and replacing path parameter place-holders with parameter values.
     * NOTE: query parameters are not handled here.
     * @param {String} path The path to append to the base URL.
     * @param {Object} pathParams The parameter values to append.
     * @returns {String} The encoded path with parameter values substituted.
     */
    buildUri(path, pathParams) {
        if (path.length > 0 && path.match(/^\//) === false) {
            path = '/' + path;
        }

        let uri = this.basePath + path;
        uri = uri.replace(/\{([\w-]+)\}/g, (fullMatch, key) => {
            let value = fullMatch;
            if (pathParams.hasOwnProperty(key)) {
                value = ApiClientUtils.paramToString(pathParams[key]);
            }

            return encodeURIComponent(value);
        });

        return uri;
    }

    appendQueryParams(uri, queryParams = {}) {
        queryParams = ApiClientUtils.normalizeParams(queryParams);

        let urlObj = url.parse(uri, true);
        urlObj.query = Object.assign({}, urlObj.query, queryParams);

        return url.format(urlObj);
    }

    /**
     * Order is important.
     */
    buildHeaders(headerParams, contentType, accept) {
        let headers = new Headers();

        headers.set('Content-Type', contentType);
        headers.set('Accept', accept);

        for (let property in this.defaultHeaders) {
            if (this.defaultHeaders.hasOwnProperty(property)) {
                headers.append(property, this.defaultHeaders[property]);
            }
        }

        for (let property in this.headers) {
            if (this.headers.hasOwnProperty(property)) {
                headers.append(property, this.headers[property]);
            }
        }

        for (let property in headerParams) {
            if (headerParams.hasOwnProperty(property)) {
                headers.append(property, headerParams[property]);
            }
        }

        return headers;
    }

    buildBody(contentType, bodyParams) {
        let body = undefined;
        switch(contentType) {
            default:
                body = bodyParams === null ? undefined : JSON.stringify(bodyParams);
        }

        return body;
    }

    /**
     * Invokes the REST service using the supplied settings and parameters.
     * @param {String} path The base URL to invoke.
     * @param {String} httpMethod The HTTP method to use.
     * @param {Object} pathParams A map of path parameters and their values.
     * @param {Object} queryParams A map of query parameters and their values.
     * @param {Object} headerParams A map of header parameters and their values.
     * @param {Object} bodyParam The value to pass as the request body.
     * @param {String[]} authNames An array of authentication type names.
     * @param {Object} credentials An object with good properties to use different types of authentication.
     * @param {String[]} contentTypes An array of request MIME types.
     * @param {String[]} accepts An array of acceptable response MIME types.
     * @param {(String|Array|Object|Function)} returnType The required type to return; can be a string for simple types or the constructor for a complex type.
     * @returns {Promise} A {@link https://www.promisejs.org/|Promise} object.
     */
    callApi(
        path,
        httpMethod,
        pathParams,
        queryParams,
        headerParams,
        bodyParam,
        authNames,
        credentials,
        contentTypes,
        accepts,
        returnType
    ) {
        let contentType = ApiClientUtils.jsonPreferredMime(contentTypes);
        let accept = ApiClientUtils.jsonPreferredMime(accepts);

        let apiUri = this.buildUri(path, pathParams);

        let apiUrl = this.appendQueryParams(apiUri, queryParams);

        let headers = this.buildHeaders(headerParams, contentType, accept);

        let body = this.buildBody(contentType, bodyParam);

        let options = {
            'body': body,
            'headers': headers,
            'method': httpMethod,
            'mode': 'cors',
        };

        // apply authentications
        options = this.applyAuthToRequest(options, authNames, credentials);

        if (this.timeout !== null) {
            options = Object.assign({}, { 'timeout': this.timeout }, options)
        }

        return fetch(apiUrl, options)
            .then((response) => {
                this.checkResponse(response);

                if (response === null || response.status === 204) {
                    return null;
                }

                return response
                    .json()
                    .then((data) => {
                        data = this.deserialize(data, returnType);

                        return {
                            'data': data,
                            'response': response,
                        };
                    })
                    .catch((error) => {
                        throw error;
                    });
            });
    }

    /**
     * Converts a value to the specified type.
     * @param {String|Object} data The data to convert, as a string or object.
     * @param {String|String[]|Object|Function} type The type to return. Pass a string for simple types or the constructor function for a complex type. Pass an array containing the type name to return an array of that type. To
     * return an object, pass an object with one property whose name is the key type and whose value is the corresponding value type: all properties on "data" will be converted to this type.
     * @returns {String|Object|Boolean|int|float|string|date|Blob} An instance of the specified type or null or undefined if data is null or undefined.
     */
    static convertToType(data, type) {
        if (data === null || typeof data === 'undefined') {
            return data;
        }

        switch (type) {
            case 'Boolean':
                return Boolean(data);
            case 'Integer':
                return parseInt(data, 10);
            case 'Number':
                return parseFloat(data);
            case 'String':
                return String(data);
            case 'Date': {
                return new Date(data);
            }
            case 'Blob':
                return data;
            default:
                if (typeof type === 'function') {
                    // for model type like: User
                    return type.constructFromData(data, null);
                }

                if (Array.isArray(type)) {
                    // for array type like: ['String']
                    let itemType = type[0];

                    return data.map((item) => {
                        return ApiClient.convertToType(item, itemType);
                    });
                }

                // For unknown type, return the data directly.
                return data;
        }
    }
}


class ApiClientUtils {
    /**
     * Checks whether the given content type represents JSON.
     * JSON content type examples:
     * . "application/json"
     * . "application/json; charset=UTF8"
     * . "APPLICATION/JSON"
     * @param {String} contentType The MIME content type to check.
     * @returns {Boolean} "true" if "contentType" represents JSON, otherwise "false".
     */
    static isJsonMime(contentType) {
        return Boolean(contentType !== null && contentType.match(/^application\/json(;.*)?$/i));
    }

    /**
     * Chooses a content type from the given array, with JSON preferred; i.e. return JSON if included, otherwise return the first.
     * @param {String[]} contentTypes
     * @returns {String} The chosen content type, preferring JSON.
     */
    static jsonPreferredMime(contentTypes) {
        for (let i = 0; i < contentTypes.length; i++) {
            if (ApiClientUtils.isJsonMime(contentTypes[i])) {
                return contentTypes[i];
            }
        }

        return contentTypes[0];
    }

    /**
     * Normalizes parameter values:
     * remove nils
     * keep files and arrays
     * format to string with `paramToString` for other cases
     * @param {Object} params The parameters as object properties.
     * @returns {Object} normalized parameters.
     */
    static normalizeParams(params) {
        let newParams = {};
        for (let key in params) {
            if (params.hasOwnProperty(key) && typeof params[key] !== 'undefined' && params[key] !== null) {
                let value = params[key];

                if (Array.isArray(value)) {
                    newParams[key] = value;
                    continue;
                }

                newParams[key] = ApiClientUtils.paramToString(value);
            }
        }

        return newParams;
    }

    /**
     * Returns a string representation for an actual parameter.
     * @param param The actual parameter.
     * @returns {String} The string representation of param.
     */
    static paramToString(param) {
        if (typeof param === 'undefined' || param === null) {
            return '';
        }

        if (param instanceof Date) {
            return param.toJSON();
        }

        return param.toString();
    }
}
