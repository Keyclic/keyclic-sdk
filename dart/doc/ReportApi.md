# keyclic_sdk_api.api.ReportApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetReportsByOrganization**](ReportApi.md#cgetReportsByOrganization) | **GET** /organizations/{organization}/reports | Retrieve all Report resources.
[**getReport**](ReportApi.md#getReport) | **GET** /reports/{report} | Retrieve one Report resource.
[**patchReport**](ReportApi.md#patchReport) | **PATCH** /reports/{report} | Edit one Report resource.


# **cgetReportsByOrganization**
> ReportPagination cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, assignedTo, category, after, before, delegatedTo, order, place, query, state, page, limit, search[description], search[reference], search[identificationNumber])

Retrieve all Report resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var assignedTo = ; // String | The identifier of the resource formatted as GUID string.
var category = ; // String | The identifier of the resource formatted as GUID string.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var delegatedTo = ; // String | The identifier of the resource formatted as GUID string.
var order = order_example; // String | 
var place = ; // String | The identifier of the resource formatted as GUID string.
var query = query_example; // String | 
var state = state_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var search[description] = search[description]_example; // String | 
var search[reference] = search[reference]_example; // String | 
var search[identificationNumber] = search[identificationNumber]_example; // String | 

try { 
    var result = api_instance.cgetReportsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, assignedTo, category, after, before, delegatedTo, order, place, query, state, page, limit, search[description], search[reference], search[identificationNumber]);
    print(result);
} catch (e) {
    print("Exception when calling ReportApi->cgetReportsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **category** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **delegatedTo** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **place** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **search[description]** | **String**|  | [optional] 
 **search[reference]** | **String**|  | [optional] 
 **search[identificationNumber]** | **String**|  | [optional] 

### Return type

[**ReportPagination**](ReportPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReport**
> Report getReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion)

Retrieve one Report resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var report = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReportApi->getReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
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

# **patchReport**
> Report patchReport(xKeyclicApp, reportPatch, report, acceptLanguage, xKeyclicAppVersion)

Edit one Report resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = ReportApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var reportPatch = ReportPatch(); // ReportPatch | 
var report = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchReport(xKeyclicApp, reportPatch, report, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling ReportApi->patchReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **reportPatch** | [**ReportPatch**](ReportPatch.md)|  | 
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

