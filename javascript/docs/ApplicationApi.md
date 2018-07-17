# KeyclicApi.ApplicationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationByToken**](ApplicationApi.md#getApplicationByToken) | **GET** /applications/{token} | Retrieve one Application resource.


<a name="getApplicationByToken"></a>
# **getApplicationByToken**
> Application getApplicationByToken(xKeyclicApp, token, opts)

Retrieve one Application resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.ApplicationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let token = "token_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
};

apiInstance.getApplicationByToken(xKeyclicApp, token, opts, (error, data, response) => {
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
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

