# @KeyclicSdkJavascript.OrganizationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetCategoriesByOrganization**](OrganizationApi.md#cgetCategoriesByOrganization) | **GET** /organizations/{organization}/categories | Retrieve all Category resources.
[**cgetDelegationsByOrganization**](OrganizationApi.md#cgetDelegationsByOrganization) | **GET** /organizations/{organization}/delegations | Retrieve all Delegation resources.
[**cgetExternalServicesByOrganization**](OrganizationApi.md#cgetExternalServicesByOrganization) | **GET** /organizations/{organization}/external-services | Retrieve all ExternalService resources.
[**cgetInternalServicesByOrganization**](OrganizationApi.md#cgetInternalServicesByOrganization) | **GET** /organizations/{organization}/internal-services | Retrieve all InternalService resources.
[**cgetMembersByOrganization**](OrganizationApi.md#cgetMembersByOrganization) | **GET** /organizations/{organization}/members | Retrieve all Member resources.
[**cgetOperationsByOrganization**](OrganizationApi.md#cgetOperationsByOrganization) | **GET** /organizations/{organization}/operations | Retrieve all Operation resources.
[**cgetOrganizations**](OrganizationApi.md#cgetOrganizations) | **GET** /organizations | Retrieve all Organization resources.
[**cgetPlacesByOrganization**](OrganizationApi.md#cgetPlacesByOrganization) | **GET** /organizations/{organization}/places | Retrieve all Place resources.
[**cgetPublicationsByOrganization**](OrganizationApi.md#cgetPublicationsByOrganization) | **GET** /organizations/{organization}/publications | Retrieve all Publication resources.
[**cgetReportsByOrganization**](OrganizationApi.md#cgetReportsByOrganization) | **GET** /organizations/{organization}/reports | Retrieve all Report resources.
[**cgetWebhooksByOrganization**](OrganizationApi.md#cgetWebhooksByOrganization) | **GET** /organizations/{organization}/webhooks | Retrieve all Webhook resources.
[**cpostExportByOrganization**](OrganizationApi.md#cpostExportByOrganization) | **POST** /organizations/{organization}/exports | Retrieve all Export resources.
[**getAnalyticByOrganization**](OrganizationApi.md#getAnalyticByOrganization) | **GET** /organizations/{organization}/analytics | Retrieve one Analytic resource.
[**getConfigurationByOrganization**](OrganizationApi.md#getConfigurationByOrganization) | **GET** /organizations/{organization}/configuration | Retrieve one Configuration resource.
[**getFormByOrganization**](OrganizationApi.md#getFormByOrganization) | **GET** /organizations/{organization}/form | Retrieve one Form resource.
[**getOrganization**](OrganizationApi.md#getOrganization) | **GET** /organizations/{organization} | Retrieve one Organization resource.
[**patchOrganization**](OrganizationApi.md#patchOrganization) | **PATCH** /organizations/{organization} | Edit one Organization resource.


<a name="cgetCategoriesByOrganization"></a>
# **cgetCategoriesByOrganization**
> CategoryPagination cgetCategoriesByOrganization(xKeyclicApp, organization, opts)

Retrieve all Category resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetCategoriesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetDelegationsByOrganization"></a>
# **cgetDelegationsByOrganization**
> DelegationPagination cgetDelegationsByOrganization(xKeyclicApp, organization, opts)

Retrieve all Delegation resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'state': "state_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetDelegationsByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **state** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**DelegationPagination**](DelegationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetExternalServicesByOrganization"></a>
# **cgetExternalServicesByOrganization**
> ExternalServicePagination cgetExternalServicesByOrganization(xKeyclicApp, organization, opts)

Retrieve all ExternalService resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetExternalServicesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**ExternalServicePagination**](ExternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetInternalServicesByOrganization"></a>
# **cgetInternalServicesByOrganization**
> InternalServicePagination cgetInternalServicesByOrganization(xKeyclicApp, organization, opts)

Retrieve all InternalService resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetInternalServicesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**InternalServicePagination**](InternalServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetMembersByOrganization"></a>
# **cgetMembersByOrganization**
> MemberPagination cgetMembersByOrganization(xKeyclicApp, organization, opts)

Retrieve all Member resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'role': "role_example", // String | 
  'query': "query_example", // String | 
  'roles': ["roles_example"], // [String] | 
  'type': "type_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetMembersByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **role** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **roles** | [**[String]**](String.md)|  | [optional] 
 **type** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetOperationsByOrganization"></a>
# **cgetOperationsByOrganization**
> OperationPagination cgetOperationsByOrganization(xKeyclicApp, organization, opts)

Retrieve all Operation resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'assignedTo': "assignedTo_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'state': "state_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetOperationsByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetOrganizations"></a>
# **cgetOrganizations**
> OrganizationPagination cgetOrganizations(xKeyclicApp, , opts)

Retrieve all Organization resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'disabledAt': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'organization': "organization_example", // String | The identifier of the resource.
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetOrganizations(xKeyclicApp, , opts, (error, data, response) => {
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
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **disabledAt** | **Date**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetPlacesByOrganization"></a>
# **cgetPlacesByOrganization**
> PlacePagination cgetPlacesByOrganization(xKeyclicApp, organization, opts)

Retrieve all Place resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoElevation': "geoElevation_example", // String | 
  'geoHash': ["geoHash_example"], // [String] | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'parent': "parent_example", // String | The identifier of the resource.
  'parents': ["parents_example"], // [String] | The identifier of the resource.
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetPlacesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash** | [**[String]**](String.md)|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **parent** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parents** | [**[String]**](String.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetPublicationsByOrganization"></a>
# **cgetPublicationsByOrganization**
> PublicationPagination cgetPublicationsByOrganization(xKeyclicApp, organization, opts)

Retrieve all Publication resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'place': "place_example", // String | The identifier of the resource.
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetPublicationsByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**PublicationPagination**](PublicationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetReportsByOrganization"></a>
# **cgetReportsByOrganization**
> ReportPagination cgetReportsByOrganization(xKeyclicApp, organization, opts)

Retrieve all Report resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'assignedTo': "assignedTo_example", // String | The identifier of the resource.
  'category': "category_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'delegatedTo': "delegatedTo_example", // String | The identifier of the resource.
  'order': "desc", // String | 
  'place': "place_example", // String | The identifier of the resource.
  'query': "query_example", // String | 
  'state': "state_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetReportsByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **delegatedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**ReportPagination**](ReportPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetWebhooksByOrganization"></a>
# **cgetWebhooksByOrganization**
> WebhookPagination cgetWebhooksByOrganization(xKeyclicApp, organization, opts)

Retrieve all Webhook resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetWebhooksByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**WebhookPagination**](WebhookPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cpostExportByOrganization"></a>
# **cpostExportByOrganization**
> Report cpostExportByOrganization(xKeyclicApp, organization, opts)

Retrieve all Export resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'assignedTo': "assignedTo_example", // String | The identifier of the resource.
  'category': "category_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'delegatedTo': "delegatedTo_example", // String | The identifier of the resource.
  'order': "desc", // String | 
  'place': "place_example", // String | The identifier of the resource.
  'query': "query_example", // String | 
  'state': "state_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cpostExportByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **delegatedTo** | [**String**](.md)| The identifier of the resource. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getAnalyticByOrganization"></a>
# **getAnalyticByOrganization**
> Chart getAnalyticByOrganization(xKeyclicApp, organization, opts)

Retrieve one Analytic resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'category': "category_example", // String | The identifier of the resource.
  'place': "place_example", // String | The identifier of the resource.
  'state': "state_example", // String | 
  'optionsProperty': "optionsProperty_example", // String | 
  'optionsSort': "optionsSort_example" // String | 
};

apiInstance.getAnalyticByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **state** | **String**|  | [optional] 
 **optionsProperty** | **String**|  | [optional] 
 **optionsSort** | **String**|  | [optional] 

### Return type

[**Chart**](Chart.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getConfigurationByOrganization"></a>
# **getConfigurationByOrganization**
> Configuration getConfigurationByOrganization(xKeyclicApp, organization, opts)

Retrieve one Configuration resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getConfigurationByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getFormByOrganization"></a>
# **getFormByOrganization**
> Schema getFormByOrganization(xKeyclicApp, organization, opts)

Retrieve one Form resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getFormByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Schema**](Schema.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getOrganization"></a>
# **getOrganization**
> Organization getOrganization(xKeyclicApp, organization, opts)

Retrieve one Organization resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchOrganization"></a>
# **patchOrganization**
> Organization patchOrganization(xKeyclicApp, organizationPatch, organization, opts)

Edit one Organization resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.OrganizationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organizationPatch = new @KeyclicSdkJavascript.OrganizationPatch(); // OrganizationPatch | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.patchOrganization(xKeyclicApp, organizationPatch, organization, opts, (error, data, response) => {
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
 **organizationPatch** | [**OrganizationPatch**](OrganizationPatch.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

