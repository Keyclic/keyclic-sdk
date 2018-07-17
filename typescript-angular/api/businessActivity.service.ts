/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 1.23.2
 * Contact: techies@keyclic.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent }                           from '@angular/common/http';
import { CustomHttpUrlEncodingCodec }                        from '../encoder';

import { Observable }                                        from 'rxjs';

import { BusinessActivity } from '../model/businessActivity';
import { BusinessActivityPagination } from '../model/businessActivityPagination';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';
import { BusinessActivityServiceInterface }                            from './businessActivity.serviceInterface';


@Injectable()
export class BusinessActivityService implements BusinessActivityServiceInterface {

    protected basePath = 'https://api.keyclic.com';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
            this.basePath = basePath || configuration.basePath || this.basePath;
        }
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        for (const consume of consumes) {
            if (form === consume) {
                return true;
            }
        }
        return false;
    }


    /**
     * Retrieve all BusinessActivity resources.
     * 
     * @param xKeyclicApp 
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param geoCoordinates One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param geoPoint One latitude and one longitude serialized and separated by a plus or a minus sign.
     * @param organization The identifier of the resource formatted as GUID string.
     * @param page Page of the overview.
     * @param limit Page of the overview.
     * @param order 
     * @param after 
     * @param before 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public cgetBusinessActivities(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, geoCoordinates?: string, geoPoint?: string, organization?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, observe?: 'body', reportProgress?: boolean): Observable<BusinessActivityPagination>;
    public cgetBusinessActivities(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, geoCoordinates?: string, geoPoint?: string, organization?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<BusinessActivityPagination>>;
    public cgetBusinessActivities(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, geoCoordinates?: string, geoPoint?: string, organization?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<BusinessActivityPagination>>;
    public cgetBusinessActivities(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, geoCoordinates?: string, geoPoint?: string, organization?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling cgetBusinessActivities.');
        }

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (geoCoordinates !== undefined && geoCoordinates !== null) {
            queryParameters = queryParameters.set('geo_coordinates', <any>geoCoordinates);
        }
        if (geoPoint !== undefined && geoPoint !== null) {
            queryParameters = queryParameters.set('geo_point', <any>geoPoint);
        }
        if (organization !== undefined && organization !== null) {
            queryParameters = queryParameters.set('organization', <any>organization);
        }
        if (page !== undefined && page !== null) {
            queryParameters = queryParameters.set('page', <any>page);
        }
        if (limit !== undefined && limit !== null) {
            queryParameters = queryParameters.set('limit', <any>limit);
        }
        if (order !== undefined && order !== null) {
            queryParameters = queryParameters.set('order', <any>order);
        }
        if (after !== undefined && after !== null) {
            queryParameters = queryParameters.set('after', <any>after.toISOString());
        }
        if (before !== undefined && before !== null) {
            queryParameters = queryParameters.set('before', <any>before.toISOString());
        }

        let headers = this.defaultHeaders;
        if (acceptLanguage !== undefined && acceptLanguage !== null) {
            headers = headers.set('accept-language', String(acceptLanguage));
        }
        if (xKeyclicApp !== undefined && xKeyclicApp !== null) {
            headers = headers.set('x-keyclic-app', String(xKeyclicApp));
        }
        if (xKeyclicAppVersion !== undefined && xKeyclicAppVersion !== null) {
            headers = headers.set('x-keyclic-app-version', String(xKeyclicAppVersion));
        }

        // authentication (bearer) required
        if (this.configuration.apiKeys["Authorization"]) {
            headers = headers.set('Authorization', this.configuration.apiKeys["Authorization"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/hal+json;charset=UTF-8'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json;charset=UTF-8'
        ];

        return this.httpClient.get<BusinessActivityPagination>(`${this.basePath}/businessactivities`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Retrieve one BusinessActivity resource.
     * 
     * @param xKeyclicApp 
     * @param businessActivity The identifier of the resource formatted as GUID string.
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getBusinessActivity(xKeyclicApp: string, businessActivity: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'body', reportProgress?: boolean): Observable<BusinessActivity>;
    public getBusinessActivity(xKeyclicApp: string, businessActivity: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<BusinessActivity>>;
    public getBusinessActivity(xKeyclicApp: string, businessActivity: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<BusinessActivity>>;
    public getBusinessActivity(xKeyclicApp: string, businessActivity: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling getBusinessActivity.');
        }
        if (businessActivity === null || businessActivity === undefined) {
            throw new Error('Required parameter businessActivity was null or undefined when calling getBusinessActivity.');
        }

        let headers = this.defaultHeaders;
        if (acceptLanguage !== undefined && acceptLanguage !== null) {
            headers = headers.set('accept-language', String(acceptLanguage));
        }
        if (xKeyclicApp !== undefined && xKeyclicApp !== null) {
            headers = headers.set('x-keyclic-app', String(xKeyclicApp));
        }
        if (xKeyclicAppVersion !== undefined && xKeyclicAppVersion !== null) {
            headers = headers.set('x-keyclic-app-version', String(xKeyclicAppVersion));
        }

        // authentication (bearer) required
        if (this.configuration.apiKeys["Authorization"]) {
            headers = headers.set('Authorization', this.configuration.apiKeys["Authorization"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/hal+json;charset=UTF-8'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json;charset=UTF-8'
        ];

        return this.httpClient.get<BusinessActivity>(`${this.basePath}/businessactivities/${encodeURIComponent(String(businessActivity))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}
