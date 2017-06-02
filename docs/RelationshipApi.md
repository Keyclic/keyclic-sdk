# KeyclicApiReference.RelationshipApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetByOrganization**](RelationshipApi.md#cgetByOrganization) | **GET** /organizations/{organization}/relationships | Retrieve all relationships for the given organization.


<a name="cgetByOrganization"></a>
# **cgetByOrganization**
> OrganizationPagination cgetByOrganization(organization, opts)

Retrieve all relationships for the given organization.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.RelationshipApi();

let organization = "organization_example"; // String | 

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
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

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

