# KeyclicApi.ChangeApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postChangeByToken**](ChangeApi.md#postChangeByToken) | **POST** /security/password/change/{token} | Create one Change resource.


<a name="postChangeByToken"></a>
# **postChangeByToken**
> postChangeByToken(xKeyclicApp, token, opts)

Create one Change resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.ChangeApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let token = "token_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'passwordData': new KeyclicApi.PasswordData() // PasswordData | 
};

apiInstance.postChangeByToken(xKeyclicApp, token, opts, (error, data, response) => {
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
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **passwordData** | [**PasswordData**](PasswordData.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

