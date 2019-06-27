# @KeyclicSdkJavascript.ExportApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cpostExportByOrganization**](ExportApi.md#cpostExportByOrganization) | **POST** /organizations/{organization}/reports/exports | Retrieve all Export resources.
[**getExportByOrganizationAndToken**](ExportApi.md#getExportByOrganizationAndToken) | **GET** /organizations/{organization}/exports/{token} | Retrieve one Export resource.


<a name="cpostExportByOrganization"></a>
# **cpostExportByOrganization**
> Report cpostExportByOrganization(xKeyclicApp, organization, opts)

Retrieve all Export resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ExportApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'place': "place_example", // String | The identifier of the resource formatted as GUID string.
  'assignedTo': "assignedTo_example", // String | The identifier of the resource formatted as GUID string.
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'delegatedTo': "delegatedTo_example", // String | The identifier of the resource formatted as GUID string.
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'state': "state_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'searchDescription': "searchDescription_example", // String | 
  'searchReference': "searchReference_example", // String | 
  'searchIdentificationNumber': "searchIdentificationNumber_example" // String | 
};

apiInstance.cpostExportByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **place** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **assignedTo** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **category** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **delegatedTo** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **searchDescription** | **String**|  | [optional] 
 **searchReference** | **String**|  | [optional] 
 **searchIdentificationNumber** | **String**|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getExportByOrganizationAndToken"></a>
# **getExportByOrganizationAndToken**
> File getExportByOrganizationAndToken(xKeyclicApp, organization, token, opts)

Retrieve one Export resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.ExportApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let token = "token_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getExportByOrganizationAndToken(xKeyclicApp, organization, token, opts, (error, data, response) => {
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
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

