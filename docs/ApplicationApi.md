# KeyclicApi.ApplicationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplication**](ApplicationApi.md#getApplication) | **GET** /applications/{application} | Retrieve one Application resource.


<a name="getApplication"></a>
# **getApplication**
> Application getApplication(xKeyclicAppapplication, opts)

Retrieve one Application resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';

let apiInstance = new KeyclicApi.ApplicationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let application = "application_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.getApplication(xKeyclicAppapplication, opts, (error, data, response) => {
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
 **application** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

