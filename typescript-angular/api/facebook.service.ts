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

import { FacebookConnectData } from '../model/facebookConnectData';
import { SuccessLogin } from '../model/successLogin';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';
import { FacebookServiceInterface }                            from './facebook.serviceInterface';


@Injectable()
export class FacebookService implements FacebookServiceInterface {

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
     * Create one Facebook resource.
     * 
     * @param xKeyclicApp 
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param facebookConnectData 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public postFacebook(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, facebookConnectData?: FacebookConnectData, observe?: 'body', reportProgress?: boolean): Observable<SuccessLogin>;
    public postFacebook(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, facebookConnectData?: FacebookConnectData, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<SuccessLogin>>;
    public postFacebook(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, facebookConnectData?: FacebookConnectData, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<SuccessLogin>>;
    public postFacebook(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, facebookConnectData?: FacebookConnectData, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling postFacebook.');
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
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected != undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<SuccessLogin>(`${this.basePath}/security/connect/facebook`,
            facebookConnectData,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}
