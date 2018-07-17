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

import { Person } from '../model/person';
import { PersonPagination } from '../model/personPagination';
import { PersonPatch } from '../model/personPatch';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';
import { PersonServiceInterface }                            from './person.serviceInterface';


@Injectable()
export class PersonService implements PersonServiceInterface {

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
     * Retrieve all Person resources.
     * 
     * @param xKeyclicApp 
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param page Page of the overview.
     * @param limit Page of the overview.
     * @param order 
     * @param after 
     * @param before 
     * @param searchFamilyName 
     * @param searchGivenName 
     * @param searchJobTitle 
     * @param searchUsername 
     * @param searchEmail 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public cgetPeople(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, searchFamilyName?: string, searchGivenName?: string, searchJobTitle?: string, searchUsername?: string, searchEmail?: string, observe?: 'body', reportProgress?: boolean): Observable<PersonPagination>;
    public cgetPeople(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, searchFamilyName?: string, searchGivenName?: string, searchJobTitle?: string, searchUsername?: string, searchEmail?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<PersonPagination>>;
    public cgetPeople(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, searchFamilyName?: string, searchGivenName?: string, searchJobTitle?: string, searchUsername?: string, searchEmail?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<PersonPagination>>;
    public cgetPeople(xKeyclicApp: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, page?: number, limit?: number, order?: 'asc' | 'desc', after?: Date, before?: Date, searchFamilyName?: string, searchGivenName?: string, searchJobTitle?: string, searchUsername?: string, searchEmail?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling cgetPeople.');
        }

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
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
        if (searchFamilyName !== undefined && searchFamilyName !== null) {
            queryParameters = queryParameters.set('search[familyName]', <any>searchFamilyName);
        }
        if (searchGivenName !== undefined && searchGivenName !== null) {
            queryParameters = queryParameters.set('search[givenName]', <any>searchGivenName);
        }
        if (searchJobTitle !== undefined && searchJobTitle !== null) {
            queryParameters = queryParameters.set('search[jobTitle]', <any>searchJobTitle);
        }
        if (searchUsername !== undefined && searchUsername !== null) {
            queryParameters = queryParameters.set('search[username]', <any>searchUsername);
        }
        if (searchEmail !== undefined && searchEmail !== null) {
            queryParameters = queryParameters.set('search[email]', <any>searchEmail);
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

        return this.httpClient.get<PersonPagination>(`${this.basePath}/people`,
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
     * Retrieve one Person resource.
     * 
     * @param xKeyclicApp 
     * @param person The identifier of the resource formatted as GUID string.
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'body', reportProgress?: boolean): Observable<Person>;
    public getPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<Person>>;
    public getPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<Person>>;
    public getPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling getPerson.');
        }
        if (person === null || person === undefined) {
            throw new Error('Required parameter person was null or undefined when calling getPerson.');
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

        return this.httpClient.get<Person>(`${this.basePath}/people/${encodeURIComponent(String(person))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Edit one Person resource.
     * 
     * @param xKeyclicApp 
     * @param person The identifier of the resource formatted as GUID string.
     * @param acceptLanguage 
     * @param xKeyclicAppVersion 
     * @param personPatch 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public patchPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, personPatch?: PersonPatch, observe?: 'body', reportProgress?: boolean): Observable<Person>;
    public patchPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, personPatch?: PersonPatch, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<Person>>;
    public patchPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, personPatch?: PersonPatch, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<Person>>;
    public patchPerson(xKeyclicApp: string, person: string, acceptLanguage?: 'fr-FR' | 'en-US', xKeyclicAppVersion?: string, personPatch?: PersonPatch, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (xKeyclicApp === null || xKeyclicApp === undefined) {
            throw new Error('Required parameter xKeyclicApp was null or undefined when calling patchPerson.');
        }
        if (person === null || person === undefined) {
            throw new Error('Required parameter person was null or undefined when calling patchPerson.');
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
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected != undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.patch<Person>(`${this.basePath}/people/${encodeURIComponent(String(person))}`,
            personPatch,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}
