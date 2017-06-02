# KeyclicApiReference.LogApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByOperation**](LogApi.md#cgetByOperation) | **GET** /operations/{operation}/logs | Retrieve all change logs for the given operation.


<a name="cgetByOperation"></a>
# **cgetByOperation**
> Operation cgetByOperation(operation)

Retrieve all change logs for the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.LogApi();

let operation = "operation_example"; // String | 

apiInstance.cgetByOperation(operation).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**|  | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

