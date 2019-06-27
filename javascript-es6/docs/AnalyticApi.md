# @KeyclicSdkJavascript.AnalyticApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAnalyticByOrganization**](AnalyticApi.md#getAnalyticByOrganization) | **GET** /organizations/{organization}/analytics | Retrieve one Analytic resource.


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

let apiInstance = new @KeyclicSdkJavascript.AnalyticApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'place': "place_example", // String | The identifier of the resource formatted as GUID string.
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
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **category** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **place** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
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

