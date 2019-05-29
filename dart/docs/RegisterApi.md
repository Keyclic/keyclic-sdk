# keyclic_sdk_api.api.RegisterApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postRegister**](RegisterApi.md#postRegister) | **POST** /security/register | Create one Register resource.


# **postRegister**
> Person postRegister(xKeyclicApp, registerData, acceptLanguage, xKeyclicAppVersion)

Create one Register resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = RegisterApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var registerData = RegisterData(); // RegisterData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postRegister(xKeyclicApp, registerData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling RegisterApi->postRegister: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **registerData** | [**RegisterData**](RegisterData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Person**](Person.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

