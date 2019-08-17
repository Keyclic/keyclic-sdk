# keyclic_sdk_api.api.ThumbnailApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThumbnailByBusinessActivityAndWidthAndHeight**](ThumbnailApi.md#getThumbnailByBusinessActivityAndWidthAndHeight) | **GET** /businessactivities/{businessActivity}/thumbnail/{width}/{height} | Retrieve one Thumbnail resource.


# **getThumbnailByBusinessActivityAndWidthAndHeight**
> MultipartFile getThumbnailByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, acceptLanguage, xKeyclicAppVersion)

Retrieve one Thumbnail resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ThumbnailApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var businessActivity = ; // String | The identifier of the resource.
var width = width_example; // String | 
var height = height_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getThumbnailByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ThumbnailApi->getThumbnailByBusinessActivityAndWidthAndHeight: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **businessActivity** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
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

