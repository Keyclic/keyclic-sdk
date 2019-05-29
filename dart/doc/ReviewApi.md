# keyclic_sdk_api.api.ReviewApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetReviewsByFeedback**](ReviewApi.md#cgetReviewsByFeedback) | **GET** /feedbacks/{feedback}/reviews | Retrieve all Review resources.
[**getReview**](ReviewApi.md#getReview) | **GET** /reviews/{review} | Retrieve one Review resource.
[**postReviewByReviewRequest**](ReviewApi.md#postReviewByReviewRequest) | **POST** /review-requests/{reviewRequest}/reviews | Create one Review resource.


# **cgetReviewsByFeedback**
> ReviewPagination cgetReviewsByFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion, page, limit, order, after, before)

Retrieve all Review resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReviewApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feedback = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.cgetReviewsByFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion, page, limit, order, after, before);
    print(result);
} catch (e) {
    print("Exception when calling ReviewApi->cgetReviewsByFeedback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feedback** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**ReviewPagination**](ReviewPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReview**
> Review getReview(xKeyclicApp, review, acceptLanguage, xKeyclicAppVersion)

Retrieve one Review resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReviewApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var review = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getReview(xKeyclicApp, review, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReviewApi->getReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **review** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Review**](Review.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReviewByReviewRequest**
> Review postReviewByReviewRequest(xKeyclicApp, reviewData, reviewRequest, acceptLanguage, xKeyclicAppVersion)

Create one Review resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReviewApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var reviewData = ReviewData(); // ReviewData | 
var reviewRequest = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postReviewByReviewRequest(xKeyclicApp, reviewData, reviewRequest, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReviewApi->postReviewByReviewRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **reviewData** | [**ReviewData**](ReviewData.md)|  | 
 **reviewRequest** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Review**](Review.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

