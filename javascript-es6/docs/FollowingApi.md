# @KeyclicSdkJavascript.FollowingApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFollowingsByFeed**](FollowingApi.md#cgetFollowingsByFeed) | **GET** /feeds/{feed}/following | Retrieve all Following resources.


<a name="cgetFollowingsByFeed"></a>
# **cgetFollowingsByFeed**
> FeedPagination cgetFollowingsByFeed(xKeyclicApp, feed, opts)

Retrieve all Following resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.FollowingApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feed = "feed_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetFollowingsByFeed(xKeyclicApp, feed, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feed** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedPagination**](FeedPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

