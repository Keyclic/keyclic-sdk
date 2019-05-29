# @KeyclicSdkJavascript.TransitionApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postTransitionByFeedback**](TransitionApi.md#postTransitionByFeedback) | **POST** /feedbacks/{feedback}/workflow/transition | Create one Transition resource.
[**postTransitionByOperation**](TransitionApi.md#postTransitionByOperation) | **POST** /operations/{operation}/workflow/transition | Create one Transition resource.
[**postTransitionByReport**](TransitionApi.md#postTransitionByReport) | **POST** /reports/{report}/workflow/transition | Create one Transition resource.


<a name="postTransitionByFeedback"></a>
# **postTransitionByFeedback**
> Feedback postTransitionByFeedback(xKeyclicApp, feedbackWorkflowTransitionData, feedback, opts)

Create one Transition resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.TransitionApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedbackWorkflowTransitionData = new @KeyclicSdkJavascript.FeedbackWorkflowTransitionData(); // FeedbackWorkflowTransitionData | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postTransitionByFeedback(xKeyclicApp, feedbackWorkflowTransitionData, feedback, opts, (error, data, response) => {
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
 **feedbackWorkflowTransitionData** | [**FeedbackWorkflowTransitionData**](FeedbackWorkflowTransitionData.md)|  | 
 **feedback** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postTransitionByOperation"></a>
# **postTransitionByOperation**
> Operation postTransitionByOperation(xKeyclicApp, operationWorkflowTransitionData, operation, opts)

Create one Transition resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.TransitionApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operationWorkflowTransitionData = new @KeyclicSdkJavascript.OperationWorkflowTransitionData(); // OperationWorkflowTransitionData | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postTransitionByOperation(xKeyclicApp, operationWorkflowTransitionData, operation, opts, (error, data, response) => {
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
 **operationWorkflowTransitionData** | [**OperationWorkflowTransitionData**](OperationWorkflowTransitionData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postTransitionByReport"></a>
# **postTransitionByReport**
> Report postTransitionByReport(xKeyclicApp, reportWorkflowTransitionData, report, opts)

Create one Transition resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.TransitionApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let reportWorkflowTransitionData = new @KeyclicSdkJavascript.ReportWorkflowTransitionData(); // ReportWorkflowTransitionData | 

let report = "report_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postTransitionByReport(xKeyclicApp, reportWorkflowTransitionData, report, opts, (error, data, response) => {
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
 **reportWorkflowTransitionData** | [**ReportWorkflowTransitionData**](ReportWorkflowTransitionData.md)|  | 
 **report** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

