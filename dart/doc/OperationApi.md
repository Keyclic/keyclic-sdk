# keyclic_sdk_api.api.OperationApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetOperationsByOrganization**](OperationApi.md#cgetOperationsByOrganization) | **GET** /organizations/{organization}/operations | Retrieve all Operation resources.
[**cgetOperationsByPerson**](OperationApi.md#cgetOperationsByPerson) | **GET** /people/{person}/operations | Retrieve all Operation resources.
[**cgetOperationsByReport**](OperationApi.md#cgetOperationsByReport) | **GET** /reports/{report}/operations | Retrieve all Operation resources.
[**deleteOperation**](OperationApi.md#deleteOperation) | **DELETE** /operations/{operation} | Remove one Operation resource.
[**getOperation**](OperationApi.md#getOperation) | **GET** /operations/{operation} | Retrieve one Operation resource.
[**patchOperation**](OperationApi.md#patchOperation) | **PATCH** /operations/{operation} | Edit one Operation resource.
[**postOperation**](OperationApi.md#postOperation) | **POST** /operations | Create one Operation resource.


# **cgetOperationsByOrganization**
> OperationPagination cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber])

Retrieve all Operation resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var state = state_example; // String | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var search[description] = search[description]_example; // String | 
var search[name] = search[name]_example; // String | 
var search[identificationNumber] = search[identificationNumber]_example; // String | 

try { 
    var result = api_instance.cgetOperationsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber]);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetOperationsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search[description]** | **String**|  | [optional] 
 **search[name]** | **String**|  | [optional] 
 **search[identificationNumber]** | **String**|  | [optional] 

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByPerson**
> OperationPagination cgetOperationsByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, organization, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber])

Retrieve all Operation resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var person = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var state = state_example; // String | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var search[description] = search[description]_example; // String | 
var search[name] = search[name]_example; // String | 
var search[identificationNumber] = search[identificationNumber]_example; // String | 

try { 
    var result = api_instance.cgetOperationsByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, organization, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber]);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetOperationsByPerson: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **state** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search[description]** | **String**|  | [optional] 
 **search[name]** | **String**|  | [optional] 
 **search[identificationNumber]** | **String**|  | [optional] 

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetOperationsByReport**
> OperationPagination cgetOperationsByReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion, organization, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber])

Retrieve all Operation resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var report = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var state = state_example; // String | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var search[description] = search[description]_example; // String | 
var search[name] = search[name]_example; // String | 
var search[identificationNumber] = search[identificationNumber]_example; // String | 

try { 
    var result = api_instance.cgetOperationsByReport(xKeyclicApp, report, acceptLanguage, xKeyclicAppVersion, organization, state, query, page, limit, order, after, before, search[description], search[name], search[identificationNumber]);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->cgetOperationsByReport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **report** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **state** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search[description]** | **String**|  | [optional] 
 **search[name]** | **String**|  | [optional] 
 **search[identificationNumber]** | **String**|  | [optional] 

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOperation**
> deleteOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion)

Remove one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling OperationApi->deleteOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operation** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperation**
> Operation getOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion)

Retrieve one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operation = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getOperation(xKeyclicApp, operation, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
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

# **patchOperation**
> Operation patchOperation(xKeyclicApp, operationPatch, operation, acceptLanguage, xKeyclicAppVersion)

Edit one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operationPatch = OperationPatch(); // OperationPatch | 
var operation = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchOperation(xKeyclicApp, operationPatch, operation, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->patchOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operationPatch** | [**OperationPatch**](OperationPatch.md)|  | 
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

# **postOperation**
> Operation postOperation(xKeyclicApp, operationData, acceptLanguage, xKeyclicAppVersion)

Create one Operation resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = OperationApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var operationData = OperationData(); // OperationData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postOperation(xKeyclicApp, operationData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->postOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **operationData** | [**OperationData**](OperationData.md)|  | 
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
