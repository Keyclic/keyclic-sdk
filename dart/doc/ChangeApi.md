# keyclic_sdk_api.api.ChangeApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postChangeByToken**](ChangeApi.md#postChangeByToken) | **POST** /security/password/change/{token} | Create one Change resource.


# **postChangeByToken**
> postChangeByToken(xKeyclicApp, passwordData, token, acceptLanguage, xKeyclicAppVersion)

Create one Change resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = ChangeApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var passwordData = PasswordData(); // PasswordData | 
var token = token_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.postChangeByToken(xKeyclicApp, passwordData, token, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling ChangeApi->postChangeByToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **passwordData** | [**PasswordData**](PasswordData.md)|  | 
 **token** | **String**|  | 
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

