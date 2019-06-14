# @KeyclicSdkJavascript.ChangeApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postChangeByToken**](ChangeApi.md#postChangeByToken) | **POST** /security/password/change/{token} | Create one Change resource.


<a name="postChangeByToken"></a>
# **postChangeByToken**
> postChangeByToken(xKeyclicApp, passwordData, token, opts)

Create one Change resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.ChangeApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let passwordData = new @KeyclicSdkJavascript.PasswordData(); // PasswordData | 

let token = "token_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postChangeByToken(xKeyclicApp, passwordData, token, opts, (error, data, response) => {
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
 **passwordData** | [**PasswordData**](PasswordData.md)|  | 
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8
