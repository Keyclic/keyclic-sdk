# @KeyclicSdkJavascript.RegisterApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postRegister**](RegisterApi.md#postRegister) | **POST** /security/register | Create one Register resource.


<a name="postRegister"></a>
# **postRegister**
> Person postRegister(xKeyclicApp, registerData, opts)

Create one Register resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.RegisterApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let registerData = new @KeyclicSdkJavascript.RegisterData(); // RegisterData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postRegister(xKeyclicApp, registerData, opts, (error, data, response) => {
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
 **registerData** | [**RegisterData**](RegisterData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Person**](Person.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

