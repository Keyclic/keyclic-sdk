# @KeyclicSdkJavascript.StateApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**patchStateByFeedback**](StateApi.md#patchStateByFeedback) | **PATCH** /feedbacks/{feedback}/state | Edit one State resource.
[**patchStateByOperation**](StateApi.md#patchStateByOperation) | **PATCH** /operations/{operation}/state | Edit one State resource.
[**patchStateByReport**](StateApi.md#patchStateByReport) | **PATCH** /reports/{report}/state | Edit one State resource.


<a name="patchStateByFeedback"></a>
# **patchStateByFeedback**
> Feedback patchStateByFeedback(xKeyclicApp, feedback, opts)

Edit one State resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.StateApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'feedbackStatePatch': new @KeyclicSdkJavascript.FeedbackStatePatch() // FeedbackStatePatch | 
};

apiInstance.patchStateByFeedback(xKeyclicApp, feedback, opts, (error, data, response) => {
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
 **feedback** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **feedbackStatePatch** | [**FeedbackStatePatch**](FeedbackStatePatch.md)|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchStateByOperation"></a>
# **patchStateByOperation**
> Operation patchStateByOperation(xKeyclicApp, operation, opts)

Edit one State resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.StateApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'operationStatePatch': new @KeyclicSdkJavascript.OperationStatePatch() // OperationStatePatch | 
};

apiInstance.patchStateByOperation(xKeyclicApp, operation, opts, (error, data, response) => {
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
 **operation** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **operationStatePatch** | [**OperationStatePatch**](OperationStatePatch.md)|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchStateByReport"></a>
# **patchStateByReport**
> Report patchStateByReport(xKeyclicApp, report, opts)

Edit one State resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.StateApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let report = "report_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'reportStatePatch': new @KeyclicSdkJavascript.ReportStatePatch() // ReportStatePatch | 
};

apiInstance.patchStateByReport(xKeyclicApp, report, opts, (error, data, response) => {
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
 **report** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **reportStatePatch** | [**ReportStatePatch**](ReportStatePatch.md)|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8
