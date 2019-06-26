# keyclic_sdk_api.api.FollowingApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFollowingsByFeed**](FollowingApi.md#cgetFollowingsByFeed) | **GET** /feeds/{feed}/following | Retrieve all Following resources.


# **cgetFollowingsByFeed**
> FeedPagination cgetFollowingsByFeed(xKeyclicApp, feed, acceptLanguage, xKeyclicAppVersion, page, limit, order, after, before)

Retrieve all Following resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = FollowingApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feed = feed_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.cgetFollowingsByFeed(xKeyclicApp, feed, acceptLanguage, xKeyclicAppVersion, page, limit, order, after, before);
    print(result);
} catch (e) {
    print("Exception when calling FollowingApi->cgetFollowingsByFeed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feed** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 

### Return type

[**FeedPagination**](FeedPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

