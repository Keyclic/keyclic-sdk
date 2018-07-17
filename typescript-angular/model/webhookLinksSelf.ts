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
import { WebhookLinksSelfIriTemplate } from './webhookLinksSelfIriTemplate';


export interface WebhookLinksSelf { 
    /**
     * The URI of the self associated to the given webhook.
     */
    href?: string;
    iriTemplate?: WebhookLinksSelfIriTemplate;
}
