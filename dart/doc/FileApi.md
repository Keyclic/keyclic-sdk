# keyclic_sdk_api.api.FileApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFileByDocument**](FileApi.md#getFileByDocument) | **GET** /documents/{document}/file | Retrieve one File resource.


# **getFileByDocument**
> MultipartFile getFileByDocument(xKeyclicApp, document, acceptLanguage, xKeyclicAppVersion)

Retrieve one File resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = FileApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var document = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getFileByDocument(xKeyclicApp, document, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling FileApi->getFileByDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **document** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**MultipartFile**](File.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

