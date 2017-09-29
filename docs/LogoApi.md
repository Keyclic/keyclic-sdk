# KeyclicApi.LogoApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLogoByOrganizationAndWidthAndHeight**](LogoApi.md#getLogoByOrganizationAndWidthAndHeight) | **GET** /organizations/{organization}/logo/{width}/{height} | Retrieve one Logo resource.


<a name="getLogoByOrganizationAndWidthAndHeight"></a>
# **getLogoByOrganizationAndWidthAndHeight**
> File getLogoByOrganizationAndWidthAndHeight(xKeyclicApp, organization, width, height, opts)

Retrieve one Logo resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.LogoApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
};

apiInstance.getLogoByOrganizationAndWidthAndHeight(xKeyclicApp, organization, width, height, opts, (error, data, response) => {
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
 **organization** | **String**| The identifier of the resource formatted as GUID string. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

