# keyclic_sdk_api.api.UnfollowApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postUnfollowByFeed**](UnfollowApi.md#postUnfollowByFeed) | **POST** /feeds/{feed}/unfollow | Create one Unfollow resource.


# **postUnfollowByFeed**
> postUnfollowByFeed(xKeyclicApp, feed, acceptLanguage, xKeyclicAppVersion)

Create one Unfollow resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = UnfollowApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feed = feed_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.postUnfollowByFeed(xKeyclicApp, feed, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling UnfollowApi->postUnfollowByFeed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feed** | **String**|  | 
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

