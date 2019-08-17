# keyclic_sdk_api.api.ImageApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteImageByOperationAndImage**](ImageApi.md#deleteImageByOperationAndImage) | **DELETE** /operations/{operation}/images/{image} | Remove one Image resource.
[**getImageByBusinessActivityAndWidthAndHeight**](ImageApi.md#getImageByBusinessActivityAndWidthAndHeight) | **GET** /businessactivities/{businessActivity}/image/{width}/{height} | Retrieve one Image resource.
[**getImageByFeedbackAndImageAndWidthAndHeight**](ImageApi.md#getImageByFeedbackAndImageAndWidthAndHeight) | **GET** /feedbacks/{feedback}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByOperationAndImageAndWidthAndHeight**](ImageApi.md#getImageByOperationAndImageAndWidthAndHeight) | **GET** /operations/{operation}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByPersonAndWidthAndHeight**](ImageApi.md#getImageByPersonAndWidthAndHeight) | **GET** /people/{person}/image/{width}/{height} | Retrieve one Image resource.
[**postImageByFeedback**](ImageApi.md#postImageByFeedback) | **POST** /feedbacks/{feedback}/images | Create one Image resource.
[**postImageByOperation**](ImageApi.md#postImageByOperation) | **POST** /operations/{operation}/images | Create one Image resource.


# **deleteImageByOperationAndImage**
> deleteImageByOperationAndImage(xKeyclicApp, operation, image, acceptLanguage, xKeyclicAppVersion)

Remove one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var image = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteImageByOperationAndImage(xKeyclicApp, operation, image, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling ImageApi->deleteImageByOperationAndImage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImageByBusinessActivityAndWidthAndHeight**
> MultipartFile getImageByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, acceptLanguage, xKeyclicAppVersion)

Retrieve one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var businessActivity = ; // String | The identifier of the resource.
var width = width_example; // String | 
var height = height_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getImageByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->getImageByBusinessActivityAndWidthAndHeight: $e\n");
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

# **getImageByFeedbackAndImageAndWidthAndHeight**
> MultipartFile getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicApp, feedback, image, width, height, acceptLanguage, xKeyclicAppVersion)

Retrieve one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feedback = ; // String | The identifier of the resource.
var image = ; // String | The identifier of the resource.
var width = width_example; // String | 
var height = height_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicApp, feedback, image, width, height, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->getImageByFeedbackAndImageAndWidthAndHeight: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feedback** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
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

# **getImageByOperationAndImageAndWidthAndHeight**
> MultipartFile getImageByOperationAndImageAndWidthAndHeight(xKeyclicApp, operation, image, width, height, acceptLanguage, xKeyclicAppVersion)

Retrieve one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var image = ; // String | The identifier of the resource.
var width = width_example; // String | 
var height = height_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getImageByOperationAndImageAndWidthAndHeight(xKeyclicApp, operation, image, width, height, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->getImageByOperationAndImageAndWidthAndHeight: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
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

# **getImageByPersonAndWidthAndHeight**
> MultipartFile getImageByPersonAndWidthAndHeight(xKeyclicApp, person, width, height, acceptLanguage, xKeyclicAppVersion)

Retrieve one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var person = ; // String | The identifier of the resource.
var width = width_example; // String | 
var height = height_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getImageByPersonAndWidthAndHeight(xKeyclicApp, person, width, height, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->getImageByPersonAndWidthAndHeight: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource. | 
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

# **postImageByFeedback**
> Feedback postImageByFeedback(xKeyclicApp, imageData, feedback, acceptLanguage, xKeyclicAppVersion)

Create one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var imageData = ImageData(); // ImageData | 
var feedback = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postImageByFeedback(xKeyclicApp, imageData, feedback, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->postImageByFeedback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **imageData** | [**ImageData**](ImageData.md)|  | 
 **feedback** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postImageByOperation**
> Operation postImageByOperation(xKeyclicApp, imageData, operation, acceptLanguage, xKeyclicAppVersion)

Create one Image resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ImageApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var imageData = ImageData(); // ImageData | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postImageByOperation(xKeyclicApp, imageData, operation, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ImageApi->postImageByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **imageData** | [**ImageData**](ImageData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

