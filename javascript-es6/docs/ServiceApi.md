# @KeyclicSdkJavascript.ServiceApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetServicesByOrganization**](ServiceApi.md#cgetServicesByOrganization) | **GET** /organizations/{organization}/relationships | Retrieve all Service resources.
[**cgetServicesByOrganization_0**](ServiceApi.md#cgetServicesByOrganization_0) | **GET** /organizations/{organization}/services | Retrieve all Service resources.


<a name="cgetServicesByOrganization"></a>
# **cgetServicesByOrganization**
> ServicePagination cgetServicesByOrganization(xKeyclicApp, organization, opts)

Retrieve all Service resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ServiceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetServicesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**ServicePagination**](ServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetServicesByOrganization_0"></a>
# **cgetServicesByOrganization_0**
> ServicePagination cgetServicesByOrganization_0(xKeyclicApp, organization, opts)

Retrieve all Service resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ServiceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetServicesByOrganization_0(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**ServicePagination**](ServicePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

