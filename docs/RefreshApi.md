# KeyclicApi.RefreshApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postRefresh**](RefreshApi.md#postRefresh) | **POST** /security/login/refresh | Create one Refresh resource.


<a name="postRefresh"></a>
# **postRefresh**
> SuccessLogin postRefresh(xKeyclicApp, opts)

Create one Refresh resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.RefreshApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'refreshToken': new KeyclicApi.RefreshToken() // RefreshToken | 
};

apiInstance.postRefresh(xKeyclicApp, opts, (error, data, response) => {
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
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **refreshToken** | [**RefreshToken**](RefreshToken.md)|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

