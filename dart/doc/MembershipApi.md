# keyclic_sdk_api.api.MembershipApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetMembershipsByPerson**](MembershipApi.md#cgetMembershipsByPerson) | **GET** /people/{person}/memberships | Retrieve all Membership resources.


# **cgetMembershipsByPerson**
> MemberPagination cgetMembershipsByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, after, before, order, query, role, roles, page, limit, search[familyName], search[givenName], search[jobTitle], search[telephone], search[username], search[email])

Retrieve all Membership resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MembershipApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var person = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var order = order_example; // String | 
var query = query_example; // String | 
var role = role_example; // String | 
var roles = roles_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var search[familyName] = search[familyName]_example; // String | 
var search[givenName] = search[givenName]_example; // String | 
var search[jobTitle] = search[jobTitle]_example; // String | 
var search[telephone] = search[telephone]_example; // String | 
var search[username] = search[username]_example; // String | 
var search[email] = search[email]_example; // String | 

try { 
    var result = api_instance.cgetMembershipsByPerson(xKeyclicApp, person, acceptLanguage, xKeyclicAppVersion, after, before, order, query, role, roles, page, limit, search[familyName], search[givenName], search[jobTitle], search[telephone], search[username], search[email]);
    print(result);
} catch (e) {
    print("Exception when calling MembershipApi->cgetMembershipsByPerson: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **role** | **String**|  | [optional] 
 **roles** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **search[familyName]** | **String**|  | [optional] 
 **search[givenName]** | **String**|  | [optional] 
 **search[jobTitle]** | **String**|  | [optional] 
 **search[telephone]** | **String**|  | [optional] 
 **search[username]** | **String**|  | [optional] 
 **search[email]** | **String**|  | [optional] 

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

