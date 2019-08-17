# keyclic_sdk_api.api.PlaceApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetPlaces**](PlaceApi.md#cgetPlaces) | **GET** /places | Retrieve all Place resources.
[**cgetPlacesByOrganization**](PlaceApi.md#cgetPlacesByOrganization) | **GET** /organizations/{organization}/places | Retrieve all Place resources.
[**getPlace**](PlaceApi.md#getPlace) | **GET** /places/{place} | Retrieve one Place resource.
[**patchPlace**](PlaceApi.md#patchPlace) | **PATCH** /places/{place} | Edit one Place resource.
[**postPlaceByOrganization**](PlaceApi.md#postPlaceByOrganization) | **POST** /organizations/{organization}/places | Create one Place resource.


# **cgetPlaces**
> PlacePagination cgetPlaces(xKeyclicApp, acceptLanguage, xKeyclicAppVersion, businessActivity, after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, order, organization, parent, parents[], query, page, limit)

Retrieve all Place resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = PlaceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var businessActivity = ; // String | The identifier of the resource.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoElevation = geoElevation_example; // String | 
var geoHash[] = geoHash[]_example; // String | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var order = order_example; // String | 
var organization = ; // String | The identifier of the resource.
var parent = ; // String | The identifier of the resource.
var parents[] = ; // String | The identifier of the resource.
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetPlaces(xKeyclicApp, acceptLanguage, xKeyclicAppVersion, businessActivity, after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, order, organization, parent, parents[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling PlaceApi->cgetPlaces: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash[]** | **String**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parent** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parents[]** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cgetPlacesByOrganization**
> PlacePagination cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, businessActivity, after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, order, parent, parents[], query, page, limit)

Retrieve all Place resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = PlaceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
var businessActivity = ; // String | The identifier of the resource.
var after = 2013-10-20T19:20:30+01:00; // DateTime | 
var before = 2013-10-20T19:20:30+01:00; // DateTime | 
var geoElevation = geoElevation_example; // String | 
var geoHash[] = geoHash[]_example; // String | 
var geoPoint = geoPoint_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var geoCoordinates = geoCoordinates_example; // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
var order = order_example; // String | 
var parent = ; // String | The identifier of the resource.
var parents[] = ; // String | The identifier of the resource.
var query = query_example; // String | 
var page = 56; // int | Page of the overview.
var limit = 56; // int | Page of the overview.

try { 
    var result = api_instance.cgetPlacesByOrganization(xKeyclicApp, organization, acceptLanguage, xKeyclicAppVersion, businessActivity, after, before, geoElevation, geoHash[], geoPoint, geoCoordinates, order, parent, parents[], query, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling PlaceApi->cgetPlacesByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash[]** | **String**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **parent** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parents[]** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlace**
> Place getPlace(xKeyclicApp, place, acceptLanguage, xKeyclicAppVersion)

Retrieve one Place resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = PlaceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var place = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.getPlace(xKeyclicApp, place, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling PlaceApi->getPlace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **place** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchPlace**
> Place patchPlace(xKeyclicApp, placePatch, place, acceptLanguage, xKeyclicAppVersion)

Edit one Place resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = PlaceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var placePatch = PlacePatch(); // PlacePatch | 
var place = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.patchPlace(xKeyclicApp, placePatch, place, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling PlaceApi->patchPlace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **placePatch** | [**PlacePatch**](PlacePatch.md)|  | 
 **place** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPlaceByOrganization**
> Place postPlaceByOrganization(xKeyclicApp, placeData, organization, acceptLanguage, xKeyclicAppVersion)

Create one Place resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = PlaceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var placeData = PlaceData(); // PlaceData | 
var organization = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postPlaceByOrganization(xKeyclicApp, placeData, organization, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling PlaceApi->postPlaceByOrganization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **placeData** | [**PlaceData**](PlaceData.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

