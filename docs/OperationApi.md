# KeyclicApiReference.OperationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callDelete**](OperationApi.md#callDelete) | **DELETE** /operations/{operation} | Delete the given operation.
[**cgetByOrganization**](OperationApi.md#cgetByOrganization) | **GET** /organizations/{organization}/operations | Retrieve all the operations for the given organization.
[**cgetByPerson**](OperationApi.md#cgetByPerson) | **GET** /people/{person}/operations | Retrieve all operations for the given person.
[**cgetByReport**](OperationApi.md#cgetByReport) | **GET** /reports/{report}/operations | Retrieve all operations for the given report.
[**deleteImage**](OperationApi.md#deleteImage) | **DELETE** /operations/{operation}/images/{image} | Delete an image on the given operation.
[**get**](OperationApi.md#get) | **GET** /operations/{operation} | Retrieve an operation.
[**patch**](OperationApi.md#patch) | **PATCH** /operations/{operation} | Edit an operation.
[**patchState**](OperationApi.md#patchState) | **PATCH** /operations/{operation}/state | Apply a state transition on the given operation.
[**post**](OperationApi.md#post) | **POST** /operations | Create an new operation.
[**postImage**](OperationApi.md#postImage) | **POST** /operations/{operation}/images | Add a new image on the given operation.


<a name="callDelete"></a>
# **callDelete**
> callDelete(operation)

Delete the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | The operation guid.

apiInstance.callDelete(operation).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**| The operation guid. | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByOrganization"></a>
# **cgetByOrganization**
> OperationPagination cgetByOrganization(organization, opts)

Retrieve all the operations for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let organization = "organization_example"; // String | 

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'before': "before_example", // String | 
  'after': "after_example" // String | 
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

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByPerson"></a>
# **cgetByPerson**
> OperationPagination cgetByPerson(person, opts)

Retrieve all operations for the given person.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let person = "person_example"; // String | The person id.

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'order': "order_example", // String | 
  'search': "search_example", // String | 
  'before': "before_example", // String | 
  'after': "after_example" // String | 
};
apiInstance.cgetByPerson(person, opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **person** | **String**| The person id. | 
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **order** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **before** | **String**|  | [optional] 
 **after** | **String**|  | [optional] 

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByReport"></a>
# **cgetByReport**
> OperationPagination cgetByReport(report, opts)

Retrieve all operations for the given report.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let report = "report_example"; // String | 

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'order': "order_example", // String | 
  'search': "search_example", // String | 
  'before': "before_example", // String | 
  'after': "after_example" // String | 
};
apiInstance.cgetByReport(report, opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report** | **String**|  | 
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **order** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **before** | **String**|  | [optional] 
 **after** | **String**|  | [optional] 

### Return type

[**OperationPagination**](OperationPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteImage"></a>
# **deleteImage**
> deleteImage(operation, image)

Delete an image on the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | The operation guid.

let image = "image_example"; // String | The image guid.

apiInstance.deleteImage(operation, image).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**| The operation guid. | 
 **image** | **String**| The image guid. | 

### Return type

null (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Operation get(operation)

Retrieve an operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | 

apiInstance.get(operation).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**|  | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patch"></a>
# **patch**
> Operation patch(operation, body)

Edit an operation.

• https://tools.ietf.org/html/rfc5789

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | 

let body = [new KeyclicApiReference.OperationPatchDocument()]; // [OperationPatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patch(operation, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**|  | 
 **body** | [**[OperationPatchDocument]**](OperationPatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patchState"></a>
# **patchState**
> Operation patchState(operation, body)

Apply a state transition on the given operation.

Apply transition for an operation.  For more informations about PATCH implementation, please refer to the RFC.  • https://tools.ietf.org/html/rfc5789  Required transition must be send as a JSON patch document.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | 

let body = [new KeyclicApiReference.OperationStatePatchDocument()]; // [OperationStatePatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patchState(operation, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**|  | 
 **body** | [**[OperationStatePatchDocument]**](OperationStatePatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="post"></a>
# **post**
> Operation post(body)

Create an new operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let body = new KeyclicApiReference.OperationBody(); // OperationBody | 

apiInstance.post(body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperationBody**](OperationBody.md)|  | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postImage"></a>
# **postImage**
> Operation postImage(operation, text)

Add a new image on the given operation.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OperationApi();

let operation = "operation_example"; // String | The operation guid.

let text = "text_example"; // String | A text described the commentary.

apiInstance.postImage(operation, text).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operation** | **String**| The operation guid. | 
 **text** | **String**| A text described the commentary. | 

### Return type

[**Operation**](Operation.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

