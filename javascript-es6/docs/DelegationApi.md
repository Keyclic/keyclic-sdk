# @KeyclicSdkJavascript.DelegationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDelegation**](DelegationApi.md#getDelegation) | **GET** /delegations/{delegation} | Retrieve one Delegation resource.
[**postDelegation**](DelegationApi.md#postDelegation) | **POST** /delegations | Create one Delegation resource.
[**postWorkflowByDelegation**](DelegationApi.md#postWorkflowByDelegation) | **POST** /delegations/{delegation}/workflow | Create one Workflow resource.


<a name="getDelegation"></a>
# **getDelegation**
> Delegation getDelegation(xKeyclicApp, delegation, opts)

Retrieve one Delegation resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.DelegationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let delegation = "delegation_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getDelegation(xKeyclicApp, delegation, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **delegation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Delegation**](Delegation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postDelegation"></a>
# **postDelegation**
> Delegation postDelegation(xKeyclicApp, delegationData, opts)

Create one Delegation resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.DelegationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let delegationData = new @KeyclicSdkJavascript.DelegationData(); // DelegationData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postDelegation(xKeyclicApp, delegationData, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **delegationData** | [**DelegationData**](DelegationData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Delegation**](Delegation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postWorkflowByDelegation"></a>
# **postWorkflowByDelegation**
> Delegation postWorkflowByDelegation(xKeyclicApp, workflowData, delegation, opts)

Create one Workflow resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.DelegationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let workflowData = new @KeyclicSdkJavascript.WorkflowData(); // WorkflowData | 

let delegation = "delegation_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postWorkflowByDelegation(xKeyclicApp, workflowData, delegation, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **workflowData** | [**WorkflowData**](WorkflowData.md)|  | 
 **delegation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Delegation**](Delegation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

