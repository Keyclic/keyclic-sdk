# keyclic_sdk_api.api.ApplicationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationByToken**](ApplicationApi.md#getApplicationByToken) | **GET** /applications/{token} | Retrieve one Application resource.


# **getApplicationByToken**
> Application getApplicationByToken(xKeyclicApp, token, acceptLanguage, xKeyclicAppVersion)

Retrieve one Application resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = ApplicationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var token = token_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getApplicationByToken(xKeyclicApp, token, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ApplicationApi->getApplicationByToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

