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


export interface OperationWorkflowTransitionData { 
    transition: OperationWorkflowTransitionData.TransitionEnum;
}
export namespace OperationWorkflowTransitionData {
    export type TransitionEnum = 'reset' | 'assign' | 'accept' | 'refuse' | 'progress' | 'resolve';
    export const TransitionEnum = {
        Reset: 'reset' as TransitionEnum,
        Assign: 'assign' as TransitionEnum,
        Accept: 'accept' as TransitionEnum,
        Refuse: 'refuse' as TransitionEnum,
        Progress: 'progress' as TransitionEnum,
        Resolve: 'resolve' as TransitionEnum
    };
}
