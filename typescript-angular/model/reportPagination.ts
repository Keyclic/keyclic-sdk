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
import { Pagination } from './pagination';
import { PaginationLinks } from './paginationLinks';
import { ReportCollection } from './reportCollection';


export interface ReportPagination { 
    limit?: number;
    page?: number;
    pages?: number;
    total?: number;
    embedded?: ReportCollection;
    links?: PaginationLinks;
}
