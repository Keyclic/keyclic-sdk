# KeyclicApiReference.TrackingApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByFeedback**](TrackingApi.md#cgetByFeedback) | **GET** /feedbacks/{feedback}/tracking | Retrieve a tracking for the given feedback.
[**cgetByReport**](TrackingApi.md#cgetByReport) | **GET** /reports/{report}/tracking | Retrieve a tracking for the given report.


<a name="cgetByFeedback"></a>
# **cgetByFeedback**
> Tracking cgetByFeedback(feedback)

Retrieve a tracking for the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.TrackingApi();

let feedback = "feedback_example"; // String | 

apiInstance.cgetByFeedback(feedback).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**|  | 

### Return type

[**Tracking**](Tracking.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByReport"></a>
# **cgetByReport**
> Tracking cgetByReport(report)

Retrieve a tracking for the given report.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.TrackingApi();

let report = "report_example"; // String | 

apiInstance.cgetByReport(report).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**|  | 

### Return type

[**Tracking**](Tracking.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

