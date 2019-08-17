# keyclic_sdk_api.api.AnalyticApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAnalyticByOrganization**](AnalyticApi.md#getAnalyticByOrganization) | **GET** /organizations/{organization}/analytics | Retrieve one Analytic resource.


# **getAnalyticByOrganization**
> Chart getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, category, place, state, options[property], options[sort])

Retrieve one Analytic resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = AnalyticApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var category = ; // String | The identifier of the resource.
var place = ; // String | The identifier of the resource.
var state = state_example; // String | 
var options[property] = options[property]_example; // String | 
var options[sort] = options[sort]_example; // String | 

try { 
    var result = api_instance.getAnalyticByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, category, place, state, options[property], options[sort]);
    print(result);
} catch (e) {
    print("Exception when calling AnalyticApi->getAnalyticByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **category** | [**String**](.md)| The identifier of the resource. | [optional] 
 **place** | [**String**](.md)| The identifier of the resource. | [optional] 
 **state** | **String**|  | [optional] 
 **options[property]** | **String**|  | [optional] 
 **options[sort]** | **String**|  | [optional] 

### Return type

[**Chart**](Chart.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

