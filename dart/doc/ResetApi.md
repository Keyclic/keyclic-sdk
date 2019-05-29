# keyclic_sdk_api.api.ResetApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postReset**](ResetApi.md#postReset) | **POST** /security/password/change-request | Create one Reset resource.


# **postReset**
> postReset(xKeyclicApp, emailData, acceptLanguage, xKeyclicAppVersion)

Create one Reset resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = ResetApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var emailData = EmailData(); // EmailData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.postReset(xKeyclicApp, emailData, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling ResetApi->postReset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **emailData** | [**EmailData**](EmailData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

