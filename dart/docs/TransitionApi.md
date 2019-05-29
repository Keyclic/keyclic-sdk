# keyclic_sdk_api.api.TransitionApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postTransitionByFeedback**](TransitionApi.md#postTransitionByFeedback) | **POST** /feedbacks/{feedback}/workflow/transition | Create one Transition resource.
[**postTransitionByOperation**](TransitionApi.md#postTransitionByOperation) | **POST** /operations/{operation}/workflow/transition | Create one Transition resource.
[**postTransitionByReport**](TransitionApi.md#postTransitionByReport) | **POST** /reports/{report}/workflow/transition | Create one Transition resource.


# **postTransitionByFeedback**
> Feedback postTransitionByFeedback(xKeyclicApp, feedbackWorkflowTransitionData, feedback, acceptLanguage, xKeyclicAppVersion)

Create one Transition resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = TransitionApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feedbackWorkflowTransitionData = FeedbackWorkflowTransitionData(); // FeedbackWorkflowTransitionData | 
var feedback = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postTransitionByFeedback(xKeyclicApp, feedbackWorkflowTransitionData, feedback, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling TransitionApi->postTransitionByFeedback: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTransitionByOperation**
> Operation postTransitionByOperation(xKeyclicApp, operationWorkflowTransitionData, operation, acceptLanguage, xKeyclicAppVersion)

Create one Transition resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = TransitionApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operationWorkflowTransitionData = OperationWorkflowTransitionData(); // OperationWorkflowTransitionData | 
var operation = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postTransitionByOperation(xKeyclicApp, operationWorkflowTransitionData, operation, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling TransitionApi->postTransitionByOperation: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTransitionByReport**
> Report postTransitionByReport(xKeyclicApp, reportWorkflowTransitionData, report, acceptLanguage, xKeyclicAppVersion)

Create one Transition resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = TransitionApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var reportWorkflowTransitionData = ReportWorkflowTransitionData(); // ReportWorkflowTransitionData | 
var report = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postTransitionByReport(xKeyclicApp, reportWorkflowTransitionData, report, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling TransitionApi->postTransitionByReport: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

