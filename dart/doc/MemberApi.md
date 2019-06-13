# keyclic_sdk_api.api.MemberApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetMembersByOrganization**](MemberApi.md#cgetMembersByOrganization) | **GET** /organizations/{organization}/members | Retrieve all Member resources.
[**deleteMemberByOrganizationAndMember**](MemberApi.md#deleteMemberByOrganizationAndMember) | **DELETE** /organizations/{organization}/members/{member} | Remove one Member resource.
[**getMemberByOrganizationAndMember**](MemberApi.md#getMemberByOrganizationAndMember) | **GET** /organizations/{organization}/members/{member} | Retrieve one Member resource.
[**patchMemberByOrganizationAndMember**](MemberApi.md#patchMemberByOrganizationAndMember) | **PATCH** /organizations/{organization}/members/{member} | Edit one Member resource.
[**postMemberByOrganization**](MemberApi.md#postMemberByOrganization) | **POST** /organizations/{organization}/members | Create one Member resource.


# **cgetMembersByOrganization**
> MemberPagination cgetMembersByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, role, roles, query, page, limit, order, after, before, search[familyName], search[givenName], search[jobTitle], search[telephone], search[username], search[email])

Retrieve all Member resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MemberApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var role = role_example; // String | 
var roles = roles_example; // String | 
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var search[familyName] = search[familyName]_example; // String | 
var search[givenName] = search[givenName]_example; // String | 
var search[jobTitle] = search[jobTitle]_example; // String | 
var search[telephone] = search[telephone]_example; // String | 
var search[username] = search[username]_example; // String | 
var search[email] = search[email]_example; // String | 

try { 
    var result = api_instance.cgetMembersByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, role, roles, query, page, limit, order, after, before, search[familyName], search[givenName], search[jobTitle], search[telephone], search[username], search[email]);
    print(result);
} catch (e) {
    print("Exception when calling MemberApi->cgetMembersByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **role** | **String**|  | [optional] 
 **roles** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
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

# **deleteMemberByOrganizationAndMember**
> Organization deleteMemberByOrganizationAndMember(xKeyclicApp, organization, member, acceptLanguage, xKeyclicAppVersion)

Remove one Member resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MemberApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var member = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.deleteMemberByOrganizationAndMember(xKeyclicApp, organization, member, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling MemberApi->deleteMemberByOrganizationAndMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **member** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMemberByOrganizationAndMember**
> Member getMemberByOrganizationAndMember(xKeyclicApp, organization, member, acceptLanguage, xKeyclicAppVersion)

Retrieve one Member resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MemberApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var member = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getMemberByOrganizationAndMember(xKeyclicApp, organization, member, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling MemberApi->getMemberByOrganizationAndMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **member** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchMemberByOrganizationAndMember**
> Member patchMemberByOrganizationAndMember(xKeyclicApp, memberPatch, organization, member, acceptLanguage, xKeyclicAppVersion)

Edit one Member resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MemberApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var memberPatch = MemberPatch(); // MemberPatch | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var member = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchMemberByOrganizationAndMember(xKeyclicApp, memberPatch, organization, member, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling MemberApi->patchMemberByOrganizationAndMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **memberPatch** | [**MemberPatch**](MemberPatch.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **member** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMemberByOrganization**
> Member postMemberByOrganization(xKeyclicApp, personData, organization, acceptLanguage, xKeyclicAppVersion)

Create one Member resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = MemberApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var personData = PersonData(); // PersonData | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postMemberByOrganization(xKeyclicApp, personData, organization, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling MemberApi->postMemberByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **personData** | [**PersonData**](PersonData.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

