# keyclic_sdk_api.api.CategoryApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetCategories**](CategoryApi.md#cgetCategories) | **GET** /categories | Retrieve all Category resources.
[**deleteCategory**](CategoryApi.md#deleteCategory) | **DELETE** /categories/{category} | Remove one Category resource.
[**getCategory**](CategoryApi.md#getCategory) | **GET** /categories/{category} | Retrieve one Category resource.
[**patchCategory**](CategoryApi.md#patchCategory) | **PATCH** /categories/{category} | Edit one Category resource.
[**postCategory**](CategoryApi.md#postCategory) | **POST** /categories | Create one Category resource.


# **cgetCategories**
> CategoryPagination cgetCategories(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, businessActivity, businessActivities[], after, before, geoPoint, geoCoordinates, order, organization, organizations[], query, page, limit)

Retrieve all Category resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = CategoryApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var businessActivity = businessActivity_example; // String | 
var businessActivities[] = []; // List<String> | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var order = order_example; // String | 
var organization = organization_example; // String | 
var organizations[] = []; // List<String> | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetCategories(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, businessActivity, businessActivities[], after, before, geoPoint, geoCoordinates, order, organization, organizations[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->cgetCategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | **String**|  | [optional] 
 **businessActivities[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | **String**|  | [optional] 
 **organizations[]** | [**List&lt;String&gt;**](String.md)|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategory**
> deleteCategory(xKeyclicApp, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Category resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = CategoryApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var category = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteCategory(xKeyclicApp, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling CategoryApi->deleteCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **category** | [**String**](.md)| The identifier of the resource. | 
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

# **getCategory**
> Category getCategory(xKeyclicApp, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Category resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = CategoryApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var category = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getCategory(xKeyclicApp, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->getCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **category** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchCategory**
> Category patchCategory(xKeyclicApp, categoryPatch, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Edit one Category resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = CategoryApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var categoryPatch = CategoryPatch(); // CategoryPatch | 
var category = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchCategory(xKeyclicApp, categoryPatch, category, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->patchCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **categoryPatch** | [**CategoryPatch**](CategoryPatch.md)|  | 
 **category** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCategory**
> Category postCategory(xKeyclicApp, categoryData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Category resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = CategoryApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var categoryData = CategoryData(); // CategoryData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
var xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postCategory(xKeyclicApp, categoryData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->postCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **categoryData** | [**CategoryData**](CategoryData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

