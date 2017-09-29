# KeyclicApi.ResetApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postReset**](ResetApi.md#postReset) | **POST** /security/password/change-request | Create one Reset resource.


<a name="postReset"></a>
# **postReset**
> postReset(xKeyclicApp, , opts)

Create one Reset resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.ResetApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'emailData': new KeyclicApi.EmailData() // EmailData | 
};

apiInstance.postReset(xKeyclicApp, , opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **emailData** | [**EmailData**](EmailData.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

