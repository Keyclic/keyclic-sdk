# @KeyclicSdkJavascript.ThumbnailApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getThumbnailByBusinessActivityAndWidthAndHeight**](ThumbnailApi.md#getThumbnailByBusinessActivityAndWidthAndHeight) | **GET** /businessactivities/{businessActivity}/thumbnail/{width}/{height} | Retrieve one Thumbnail resource.


<a name="getThumbnailByBusinessActivityAndWidthAndHeight"></a>
# **getThumbnailByBusinessActivityAndWidthAndHeight**
> File getThumbnailByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, opts)

Retrieve one Thumbnail resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ThumbnailApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let businessActivity = "businessActivity_example"; // String | The identifier of the resource.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getThumbnailByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, opts, (error, data, response) => {
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
 **businessActivity** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

