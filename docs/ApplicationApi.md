# KeyclicApiReference.ApplicationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](ApplicationApi.md#get) | **GET** /applications/{application} | Retrieve an application.


<a name="get"></a>
# **get**
> Application get(application)

Retrieve an application.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.ApplicationApi();

let application = "application_example"; // String | The application's token.

apiInstance.get(application).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application** | **String**| The application&#39;s token. | 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

