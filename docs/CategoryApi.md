# KeyclicApiReference.CategoryApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cget**](CategoryApi.md#cget) | **GET** /categories | Retrieve all categories available for the given application.
[**cgetByOrganization**](CategoryApi.md#cgetByOrganization) | **GET** /organizations/{organization}/categories | Retrieve all categories for the given organization.
[**get**](CategoryApi.md#get) | **GET** /categories/{category} | Retrieve a category.
[**patch**](CategoryApi.md#patch) | **PATCH** /categories/{category} | Edit a category.
[**postByOrganization**](CategoryApi.md#postByOrganization) | **POST** /organizations/{organization}/categories | Create a new category for the given organization.


<a name="cget"></a>
# **cget**
> CategoryPagination cget(xKeyclicApp, , opts)

Retrieve all categories available for the given application.

The list of the categories available to use them when your are creating a new feedback can be retrieve using this endpoint.  A valid access token, application token and geoCoordinates parameter are required to retrieve categories which are located in the places which are matching the given geoCoordinates.  Application token must be stored in the request header \&quot;X-Keyclic-App\&quot;.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | The application token.

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'geoCoordinates': "geoCoordinates_example", // String | Filter by geo coordinates.
  'organization': "organization_example", // String | Filter by an organization.
};
apiInstance.cget(xKeyclicApp, , opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**| The application token. | [default to com.keyclic.app]
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **geoCoordinates** | **String**| Filter by geo coordinates. | [optional] 
 **organization** | **String**| Filter by an organization. | [optional] 

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByOrganization"></a>
# **cgetByOrganization**
> CategoryPagination cgetByOrganization(organization, opts)

Retrieve all categories for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CategoryApi();

let organization = "organization_example"; // String | 

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'search': "search_example" // String | 
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
 **search** | **String**|  | [optional] 

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Category get(category)

Retrieve a category.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CategoryApi();

let category = "category_example"; // String | 

apiInstance.get(category).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**|  | 

### Return type

[**Category**](Category.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patch"></a>
# **patch**
> Category patch(category, body)

Edit a category.

Update one category resource.  For more information about PATCH implementation, please refer to the RFC.  • https://tools.ietf.org/html/rfc5789

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.CategoryApi();

let category = "category_example"; // String | 

let body = [new KeyclicApiReference.CategoryPatchDocument()]; // [CategoryPatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patch(category, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**|  | 
 **body** | [**[CategoryPatchDocument]**](CategoryPatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postByOrganization"></a>
# **postByOrganization**
> Category postByOrganization(organization, body)

Create a new category for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.CategoryApi();

let organization = "organization_example"; // String | The name id of the organization.

let body = new KeyclicApiReference.CategoryBody(); // CategoryBody | 

apiInstance.postByOrganization(organization, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name id of the organization. | 
 **body** | [**CategoryBody**](CategoryBody.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

