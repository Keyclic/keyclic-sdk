# KeyclicApiReference.ReportApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByOrganization**](ReportApi.md#cgetByOrganization) | **GET** /organizations/{organization}/reports | Retrieve all reports for the given organization.
[**exportByOrganization**](ReportApi.md#exportByOrganization) | **POST** /organizations/{organization}/reports/exports | Export all reports for the given organization.
[**get**](ReportApi.md#get) | **GET** /reports/{report} | Retrieve a report.
[**patch**](ReportApi.md#patch) | **PATCH** /reports/{report} | Edit a report.
[**patchState**](ReportApi.md#patchState) | **PATCH** /reports/{report}/state | Apply a state transition on the given report.
[**postDelegate**](ReportApi.md#postDelegate) | **POST** /organizations/{organization}/delegates | Delegate a report to an other organization.


<a name="cgetByOrganization"></a>
# **cgetByOrganization**
> ReportPagination cgetByOrganization(organization, opts)

Retrieve all reports for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let organization = "organization_example"; // String | 

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'before': "before_example", // String | 
  'after': "after_example", // String | 
  'place': "place_example" // String | 
};
apiInstance.cgetByOrganization(organization, opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **before** | **String**|  | [optional] 
 **after** | **String**|  | [optional] 
 **place** | **String**|  | [optional] 

### Return type

[**ReportPagination**](ReportPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="exportByOrganization"></a>
# **exportByOrganization**
> exportByOrganization(organization, opts)

Export all reports for the given organization.

The export is a CSV file send by email.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let organization = "organization_example"; // String | 

let opts = { 
  'before': "before_example", // String | 
  'after': "after_example", // String | 
  'place': "place_example" // String | 
};
apiInstance.exportByOrganization(organization, opts).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **before** | **String**|  | [optional] 
 **after** | **String**|  | [optional] 
 **place** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Report get(report)

Retrieve a report.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let report = "report_example"; // String | 

apiInstance.get(report).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**|  | 

### Return type

[**Report**](Report.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patch"></a>
# **patch**
> Report patch(report, body)

Edit a report.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let report = "report_example"; // String | 

let body = [new KeyclicApiReference.ReportPatchDocument()]; // [ReportPatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patch(report, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**|  | 
 **body** | [**[ReportPatchDocument]**](ReportPatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Report**](Report.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patchState"></a>
# **patchState**
> Report patchState(report, body)

Apply a state transition on the given report.

Apply transition for an organization.  For more informations about PATCH implementation, please refer to the RFC.  • https://tools.ietf.org/html/rfc5789

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let report = "report_example"; // String | 

let body = [new KeyclicApiReference.ReportStatePatchDocument()]; // [ReportStatePatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patchState(report, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**|  | 
 **body** | [**[ReportStatePatchDocument]**](ReportStatePatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Report**](Report.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postDelegate"></a>
# **postDelegate**
> Report postDelegate(organization, delegateObject)

Delegate a report to an other organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.ReportApi();

let organization = "organization_example"; // String | The organization id

let delegateObject = new KeyclicApiReference.DelegateBody(); // DelegateBody | The body object for delegate a report to an other organization

apiInstance.postDelegate(organization, delegateObject).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The organization id | 
 **delegateObject** | [**DelegateBody**](DelegateBody.md)| The body object for delegate a report to an other organization | 

### Return type

[**Report**](Report.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

