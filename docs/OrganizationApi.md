# KeyclicApiReference.OrganizationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cget**](OrganizationApi.md#cget) | **GET** /organizations | Retrieve all organizations
[**get**](OrganizationApi.md#get) | **GET** /organizations/{organization} | Retrieve an organization.
[**patch**](OrganizationApi.md#patch) | **PATCH** /organizations/{organization} | Edit an organization.
[**post**](OrganizationApi.md#post) | **POST** /organizations | Create a new organization.


<a name="cget"></a>
# **cget**
> OrganizationPagination cget(opts)

Retrieve all organizations

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OrganizationApi();

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'search': "search_example", // String | 
  'geoCoordinates': "geoCoordinates_example", // String | [-+]latitude[-+]longitude
  'organization': "organization_example" // String | Organization GUID.
};
apiInstance.cget(opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **search** | **String**|  | [optional] 
 **geoCoordinates** | **String**| [-+]latitude[-+]longitude | [optional] 
 **organization** | **String**| Organization GUID. | [optional] 

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Organization get(organization)

Retrieve an organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OrganizationApi();

let organization = "organization_example"; // String | 

apiInstance.get(organization).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patch"></a>
# **patch**
> Organization patch(organization, body)

Edit an organization.

• https://tools.ietf.org/html/rfc5789

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OrganizationApi();

let organization = "organization_example"; // String | 

let body = [new KeyclicApiReference.OrganizationPatchDocument()]; // [OrganizationPatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patch(organization, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **body** | [**[OrganizationPatchDocument]**](OrganizationPatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Organization**](Organization.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="post"></a>
# **post**
> Organization post(body)

Create a new organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.OrganizationApi();

let body = new KeyclicApiReference.OrganizationBody(); // OrganizationBody | 

apiInstance.post(body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrganizationBody**](OrganizationBody.md)|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

