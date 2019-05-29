# keyclic_sdk_api.api.RelationshipApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetRelationshipsByOrganization**](RelationshipApi.md#cgetRelationshipsByOrganization) | **GET** /organizations/{organization}/relationships | Retrieve all Relationship resources.
[**deleteRelationshipByOrganizationAndRelationship**](RelationshipApi.md#deleteRelationshipByOrganizationAndRelationship) | **DELETE** /organizations/{organization}/relationships/{relationship} | Remove one Relationship resource.
[**postRelationshipByOrganization**](RelationshipApi.md#postRelationshipByOrganization) | **POST** /organizations/{organization}/relationships | Create one Relationship resource.


# **cgetRelationshipsByOrganization**
> OrganizationPagination cgetRelationshipsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, businessActivity, geoCoordinates, geoPoint, query, page, limit, order, after, before, search[alternateName], search[billingEmailAddress], search[description], search[name], search[notificationEmailAddress])

Retrieve all Relationship resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = RelationshipApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var businessActivity = ; // String | The identifier of the resource formatted as GUID string.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.
var order = order_example; // String | 
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var search[alternateName] = search[alternateName]_example; // String | 
var search[billingEmailAddress] = search[billingEmailAddress]_example; // String | 
var search[description] = search[description]_example; // String | 
var search[name] = search[name]_example; // String | 
var search[notificationEmailAddress] = search[notificationEmailAddress]_example; // String | 

try { 
    var result = api_instance.cgetRelationshipsByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, businessActivity, geoCoordinates, geoPoint, query, page, limit, order, after, before, search[alternateName], search[billingEmailAddress], search[description], search[name], search[notificationEmailAddress]);
    print(result);
} catch (e) {
    print("Exception when calling RelationshipApi->cgetRelationshipsByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **search[alternateName]** | **String**|  | [optional] 
 **search[billingEmailAddress]** | **String**|  | [optional] 
 **search[description]** | **String**|  | [optional] 
 **search[name]** | **String**|  | [optional] 
 **search[notificationEmailAddress]** | **String**|  | [optional] 

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRelationshipByOrganizationAndRelationship**
> Organization deleteRelationshipByOrganizationAndRelationship(xKeyclicApp, organization, relationship, acceptLanguage, xKeyclicAppVersion)

Remove one Relationship resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = RelationshipApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var relationship = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.deleteRelationshipByOrganizationAndRelationship(xKeyclicApp, organization, relationship, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling RelationshipApi->deleteRelationshipByOrganizationAndRelationship: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **relationship** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
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

# **postRelationshipByOrganization**
> Organization postRelationshipByOrganization(xKeyclicApp, relationshipData, organization, acceptLanguage, xKeyclicAppVersion)

Create one Relationship resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = RelationshipApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var relationshipData = RelationshipData(); // RelationshipData | 
var organization = ; // String | The identifier of the resource formatted as GUID string.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postRelationshipByOrganization(xKeyclicApp, relationshipData, organization, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling RelationshipApi->postRelationshipByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **relationshipData** | [**RelationshipData**](RelationshipData.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
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

