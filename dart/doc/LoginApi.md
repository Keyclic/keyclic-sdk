# keyclic_sdk_api.api.LoginApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogin**](LoginApi.md#postLogin) | **POST** /security/login | Create one Login resource.


# **postLogin**
> SuccessLogin postLogin(xKeyclicApp, loginData, acceptLanguage, xKeyclicAppVersion)

Create one Login resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = LoginApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var loginData = LoginData(); // LoginData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postLogin(xKeyclicApp, loginData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling LoginApi->postLogin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **loginData** | [**LoginData**](LoginData.md)|  | 
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

