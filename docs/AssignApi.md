# KeyclicApi.AssignApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postAssignByOperation**](AssignApi.md#postAssignByOperation) | **POST** /operations/{operation}/assign | Create one Assign resource.


<a name="postAssignByOperation"></a>
# **postAssignByOperation**
> Operation postAssignByOperation(xKeyclicAppoperation, opts)

Create one Assign resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.AssignApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'memberData': new KeyclicApi.MemberData() // MemberData | 
};

apiInstance.postAssignByOperation(xKeyclicAppoperation, opts, (error, data, response) => {
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
 **operation** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **memberData** | [**MemberData**](MemberData.md)|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

