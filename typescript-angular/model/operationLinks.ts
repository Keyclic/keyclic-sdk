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
import { OperationLinksImage } from './operationLinksImage';
import { OperationLinksOperator } from './operationLinksOperator';
import { OperationLinksReport } from './operationLinksReport';
import { OperationLinksSelf } from './operationLinksSelf';
import { OperationLinksTracking } from './operationLinksTracking';


export interface OperationLinks { 
    self?: OperationLinksSelf;
    image?: OperationLinksImage;
    report?: OperationLinksReport;
    operator?: OperationLinksOperator;
    tracking?: OperationLinksTracking;
}
