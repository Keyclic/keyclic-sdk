# KeyclicApiReference.ContributionApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByFeedback**](ContributionApi.md#cgetByFeedback) | **GET** /feedbacks/{feedback}/contributions | Retrieve all contributions for the given feedback.
[**postByFeedback**](ContributionApi.md#postByFeedback) | **POST** /feedbacks/{feedback}/contributions | Add a new contribution for the given feedback.


<a name="cgetByFeedback"></a>
# **cgetByFeedback**
> cgetByFeedback(feedback)

Retrieve all contributions for the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ContributionApi();

let feedback = "feedback_example"; // String | The feedback guid.

apiInstance.cgetByFeedback(feedback).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**| The feedback guid. | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postByFeedback"></a>
# **postByFeedback**
> postByFeedback(feedback)

Add a new contribution for the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ContributionApi();

let feedback = "feedback_example"; // String | The feedback guid.

apiInstance.postByFeedback(feedback).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**| The feedback guid. | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

