# keyclic_sdk_api.api.StateApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**patchStateByFeedback**](StateApi.md#patchStateByFeedback) | **PATCH** /feedbacks/{feedback}/state | Edit one State resource.
[**patchStateByOperation**](StateApi.md#patchStateByOperation) | **PATCH** /operations/{operation}/state | Edit one State resource.
[**patchStateByReport**](StateApi.md#patchStateByReport) | **PATCH** /reports/{report}/state | Edit one State resource.


# **patchStateByFeedback**
> Feedback patchStateByFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion, feedbackStatePatch)

Edit one State resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = StateApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var feedback = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var feedbackStatePatch = FeedbackStatePatch(); // FeedbackStatePatch | 

try { 
    var result = api_instance.patchStateByFeedback(xKeyclicApp, feedback, acceptLanguage, xKeyclicAppVersion, feedbackStatePatch);
    print(result);
} catch (e) {
    print("Exception when calling StateApi->patchStateByFeedback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **feedback** | [**String**](.md)| The identifier of the resource. | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchStateByOperation**
> Operation patchStateByOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion, operationStatePatch)

Edit one State resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = StateApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var operationStatePatch = OperationStatePatch(); // OperationStatePatch | 

try { 
    var result = api_instance.patchStateByOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion, operationStatePatch);
    print(result);
} catch (e) {
    print("Exception when calling StateApi->patchStateByOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource. | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchStateByReport**
> Report patchStateByReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion, reportStatePatch)

Edit one State resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = StateApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var report = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var reportStatePatch = ReportStatePatch(); // ReportStatePatch | 

try { 
    var result = api_instance.patchStateByReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion, reportStatePatch);
    print(result);
} catch (e) {
    print("Exception when calling StateApi->patchStateByReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **report** | [**String**](.md)| The identifier of the resource. | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

