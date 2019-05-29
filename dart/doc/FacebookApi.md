# keyclic_sdk_api.api.FacebookApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postFacebook**](FacebookApi.md#postFacebook) | **POST** /security/connect/facebook | Create one Facebook resource.


# **postFacebook**
> SuccessLogin postFacebook(xKeyclicApp, facebookConnectData, acceptLanguage, xKeyclicAppVersion)

Create one Facebook resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = FacebookApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var facebookConnectData = FacebookConnectData(); // FacebookConnectData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postFacebook(xKeyclicApp, facebookConnectData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling FacebookApi->postFacebook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **facebookConnectData** | [**FacebookConnectData**](FacebookConnectData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

