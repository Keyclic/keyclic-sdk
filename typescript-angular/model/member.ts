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
import { MemberEmbedded } from './memberEmbedded';
import { MemberLinks } from './memberLinks';


export interface Member { 
    roles?: Array<string>;
    id: string;
    createdAt: Date;
    readonly type?: string;
    links?: MemberLinks;
    embedded?: MemberEmbedded;
}
