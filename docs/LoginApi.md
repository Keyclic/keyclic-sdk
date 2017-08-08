# KeyclicApi.LoginApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogin**](LoginApi.md#postLogin) | **POST** /security/login | Create one Login resource.


<a name="postLogin"></a>
# **postLogin**
> SuccessLogin postLogin(xKeyclicApp, opts)

Create one Login resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.LoginApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'loginData': new KeyclicApi.LoginData() // LoginData | 
};

apiInstance.postLogin(xKeyclicApp, opts, (error, data, response) => {
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
 **loginData** | [**LoginData**](LoginData.md)|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

