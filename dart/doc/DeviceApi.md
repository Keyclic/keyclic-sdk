# keyclic_sdk_api.api.DeviceApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceByPersonAndDevice**](DeviceApi.md#deleteDeviceByPersonAndDevice) | **DELETE** /people/{person}/devices/{device} | Remove one Device resource.
[**postDeviceByPerson**](DeviceApi.md#postDeviceByPerson) | **POST** /people/{person}/devices | Create one Device resource.


# **deleteDeviceByPersonAndDevice**
> deleteDeviceByPersonAndDevice(xKeyclicApp, person, device, acceptLanguage, xKeyclicAppVersion)

Remove one Device resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DeviceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var person = ; // String | The identifier of the resource.
var device = device_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteDeviceByPersonAndDevice(xKeyclicApp, person, device, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling DeviceApi->deleteDeviceByPersonAndDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource. | 
 **device** | **String**|  | 
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

# **postDeviceByPerson**
> Device postDeviceByPerson(xKeyclicApp, deviceData, person, acceptLanguage, xKeyclicAppVersion)

Create one Device resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = DeviceApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var deviceData = DeviceData(); // DeviceData | 
var person = ; // String | The identifier of the resource.
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postDeviceByPerson(xKeyclicApp, deviceData, person, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling DeviceApi->postDeviceByPerson: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **deviceData** | [**DeviceData**](DeviceData.md)|  | 
 **person** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

