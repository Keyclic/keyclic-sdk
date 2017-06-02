# KeyclicApiReference.CommentApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByFeedback**](CommentApi.md#cgetByFeedback) | **GET** /feedbacks/{feedback}/comments | Retrieve all comments for the given feedback.
[**cgetByOperation**](CommentApi.md#cgetByOperation) | **GET** /operations/{operation}/comments | Retrieve all comments for the given operation.
[**postByFeedback**](CommentApi.md#postByFeedback) | **POST** /feedbacks/{feedback}/comments | Add a new comment on the given feedback.
[**postByOperation**](CommentApi.md#postByOperation) | **POST** /operations/{operation}/comments | Add a new comment on the given operation.


<a name="cgetByFeedback"></a>
# **cgetByFeedback**
> cgetByFeedback(feedback)

Retrieve all comments for the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CommentApi();

let feedback = "feedback_example"; // String | 

apiInstance.cgetByFeedback(feedback).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**|  | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByOperation"></a>
# **cgetByOperation**
> cgetByOperation(operation)

Retrieve all comments for the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CommentApi();

let operation = "operation_example"; // String | The operation guid.

apiInstance.cgetByOperation(operation).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**| The operation guid. | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postByFeedback"></a>
# **postByFeedback**
> Feedback postByFeedback(feedback, text)

Add a new comment on the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CommentApi();

let feedback = "feedback_example"; // String | The feedback guid.

let text = "text_example"; // String | A text described the commentary.

apiInstance.postByFeedback(feedback, text).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**| The feedback guid. | 
 **text** | **String**| A text described the commentary. | 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postByOperation"></a>
# **postByOperation**
> Operation postByOperation(operation, text)

Add a new comment on the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CommentApi();

let operation = "operation_example"; // String | The operation guid.

let text = "text_example"; // String | A text described the commentary.

apiInstance.postByOperation(operation, text).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**| The operation guid. | 
 **text** | **String**| A text described the commentary. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

