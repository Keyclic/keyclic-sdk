# @KeyclicSdkJavascript.LoginApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogin**](LoginApi.md#postLogin) | **POST** /security/login | Create one Login resource.


<a name="postLogin"></a>
# **postLogin**
> SuccessLogin postLogin(xKeyclicApp, loginData, opts)

Create one Login resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.LoginApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let loginData = new @KeyclicSdkJavascript.LoginData(); // LoginData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postLogin(xKeyclicApp, loginData, opts, (error, data, response) => {
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
 **loginData** | [**LoginData**](LoginData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

