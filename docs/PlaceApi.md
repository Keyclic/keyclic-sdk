# KeyclicApiReference.PlaceApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cget**](PlaceApi.md#cget) | **GET** /places | Retrieve all places for the given application.
[**cgetByOrganization**](PlaceApi.md#cgetByOrganization) | **GET** /organizations/{organization}/places | Retrieve all places for the given organization.
[**get**](PlaceApi.md#get) | **GET** /places/{place} | Retrieve a place.
[**patch**](PlaceApi.md#patch) | **PATCH** /places/{place} | Edit a place.
[**postByOrganization**](PlaceApi.md#postByOrganization) | **POST** /organizations/{organization}/places | Create a new place for the given organization.


<a name="cget"></a>
# **cget**
> PlacePagination cget(opts)

Retrieve all places for the given application.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.PlaceApi();

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
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
 **geoCoordinates** | **String**| [-+]latitude[-+]longitude | [optional] 
 **organization** | **String**| Organization GUID. | [optional] 

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByOrganization"></a>
# **cgetByOrganization**
> PlacePagination cgetByOrganization(organization, opts)

Retrieve all places for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.PlaceApi();

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

[**PlacePagination**](PlacePagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Place get(place)

Retrieve a place.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.PlaceApi();

let place = "place_example"; // String | 

apiInstance.get(place).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **place** | **String**|  | 

### Return type

[**Place**](Place.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patch"></a>
# **patch**
> Place patch(place, body)

Edit a place.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.PlaceApi();

let place = "place_example"; // String | 

let body = [new KeyclicApiReference.PlacePatchDocument()]; // [PlacePatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patch(place, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **place** | **String**|  | 
 **body** | [**[PlacePatchDocument]**](PlacePatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Place**](Place.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postByOrganization"></a>
# **postByOrganization**
> Place postByOrganization(organization)

Create a new place for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.PlaceApi();

let organization = "organization_example"; // String | 

apiInstance.postByOrganization(organization).then((data) => {
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

[**Place**](Place.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

