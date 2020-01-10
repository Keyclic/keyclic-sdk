# @KeyclicSdkJavascript.ReviewRequestApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReviewRequest**](ReviewRequestApi.md#getReviewRequest) | **GET** /review-requests/{reviewRequest} | Retrieve one ReviewRequest resource.


<a name="getReviewRequest"></a>
# **getReviewRequest**
> ReviewRequest getReviewRequest(xKeyclicApp, reviewRequest, opts)

Retrieve one ReviewRequest resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ReviewRequestApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let reviewRequest = "reviewRequest_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xDateTime': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getReviewRequest(xKeyclicApp, reviewRequest, opts, (error, data, response) => {
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
 **reviewRequest** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xDateTime** | **Date**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**ReviewRequest**](ReviewRequest.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

