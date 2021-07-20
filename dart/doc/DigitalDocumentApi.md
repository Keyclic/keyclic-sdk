# keyclic_sdk_api.api.DigitalDocumentApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFeedbackByDigitalDocument**](DigitalDocumentApi.md#cgetFeedbackByDigitalDocument) | **GET** /digital-documents/{digitalDocument}/feedbacks | Retrieve all Feedback resources.
[**deleteDigitalDocument**](DigitalDocumentApi.md#deleteDigitalDocument) | **DELETE** /digital-documents/{digitalDocument} | Remove one DigitalDocument resource.
[**getDigitalDocument**](DigitalDocumentApi.md#getDigitalDocument) | **GET** /digital-documents/{digitalDocument} | Retrieve one DigitalDocument resource.
[**patchDigitalDocument**](DigitalDocumentApi.md#patchDigitalDocument) | **PATCH** /digital-documents/{digitalDocument} | Edit one DigitalDocument resource.
[**postDigitalDocument**](DigitalDocumentApi.md#postDigitalDocument) | **POST** /digital-documents | Create one DigitalDocument resource.


# **cgetFeedbackByDigitalDocument**
> FeedbackPagination cgetFeedbackByDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, batch, batches[], after, before, geoHash[], order, organization, organizations[], page, limit)

Retrieve all Feedback resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DigitalDocumentApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var digitalDocument = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var batch = batch_example; // String | 
var batches[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoHash[] = []; // List<String> | 
var order = order_example; // String | 
var organization = organization_example; // String | 
var organizations[] = []; // List<String> | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetFeedbackByDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, batch, batches[], after, before, geoHash[], order, organization, organizations[], page, limit);
    print(result);
} catch (e) {
    print("Exception when calling DigitalDocumentApi->cgetFeedbackByDigitalDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **digitalDocument** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **batch** | **String**|  | [optional] 
 **batches[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoHash[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDigitalDocument**
> deleteDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one DigitalDocument resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DigitalDocumentApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var digitalDocument = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling DigitalDocumentApi->deleteDigitalDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **digitalDocument** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDigitalDocument**
> Document getDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one DigitalDocument resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DigitalDocumentApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var digitalDocument = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getDigitalDocument(xKeyclicApp, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling DigitalDocumentApi->getDigitalDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **digitalDocument** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchDigitalDocument**
> Document patchDigitalDocument(xKeyclicApp, documentPatch, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one DigitalDocument resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DigitalDocumentApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var documentPatch = DocumentPatch(); // DocumentPatch | 
var digitalDocument = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchDigitalDocument(xKeyclicApp, documentPatch, digitalDocument, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling DigitalDocumentApi->patchDigitalDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **documentPatch** | [**DocumentPatch**](DocumentPatch.md)|  | 
 **digitalDocument** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDigitalDocument**
> Document postDigitalDocument(xKeyclicApp, documentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one DigitalDocument resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DigitalDocumentApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var documentData = DocumentData(); // DocumentData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postDigitalDocument(xKeyclicApp, documentData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling DigitalDocumentApi->postDigitalDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **documentData** | [**DocumentData**](DocumentData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

