# @KeyclicSdkJavascript.DeviceApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceByPersonAndDevice**](DeviceApi.md#deleteDeviceByPersonAndDevice) | **DELETE** /people/{person}/devices/{device} | Remove one Device resource.
[**postDeviceByPerson**](DeviceApi.md#postDeviceByPerson) | **POST** /people/{person}/devices | Create one Device resource.


<a name="deleteDeviceByPersonAndDevice"></a>
# **deleteDeviceByPersonAndDevice**
> deleteDeviceByPersonAndDevice(xKeyclicApp, person, device, opts)

Remove one Device resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.DeviceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let device = "device_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.deleteDeviceByPersonAndDevice(xKeyclicApp, person, device, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **person** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **device** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postDeviceByPerson"></a>
# **postDeviceByPerson**
> Device postDeviceByPerson(xKeyclicApp, deviceData, person, opts)

Create one Device resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.DeviceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let deviceData = new @KeyclicSdkJavascript.DeviceData(); // DeviceData | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postDeviceByPerson(xKeyclicApp, deviceData, person, opts, (error, data, response) => {
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
 **deviceData** | [**DeviceData**](DeviceData.md)|  | 
 **person** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

