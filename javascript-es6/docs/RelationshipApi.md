# @KeyclicSdkJavascript.RelationshipApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetRelationshipsByOrganization**](RelationshipApi.md#cgetRelationshipsByOrganization) | **GET** /organizations/{organization}/relationships | Retrieve all Relationship resources.
[**deleteRelationshipByOrganizationAndRelationship**](RelationshipApi.md#deleteRelationshipByOrganizationAndRelationship) | **DELETE** /organizations/{organization}/relationships/{relationship} | Remove one Relationship resource.
[**postRelationshipByOrganization**](RelationshipApi.md#postRelationshipByOrganization) | **POST** /organizations/{organization}/relationships | Create one Relationship resource.


<a name="cgetRelationshipsByOrganization"></a>
# **cgetRelationshipsByOrganization**
> OrganizationPagination cgetRelationshipsByOrganization(xKeyclicApp, organization, opts)

Retrieve all Relationship resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.RelationshipApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource formatted as GUID string.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'disabledAt': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'searchAlternateName': "searchAlternateName_example", // String | 
  'searchBillingEmailAddress': "searchBillingEmailAddress_example", // String | 
  'searchDescription': "searchDescription_example", // String | 
  'searchName': "searchName_example", // String | 
  'searchNotificationEmailAddress': "searchNotificationEmailAddress_example" // String | 
};

apiInstance.cgetRelationshipsByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **businessActivity** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **disabledAt** | **Date**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **searchAlternateName** | **String**|  | [optional] 
 **searchBillingEmailAddress** | **String**|  | [optional] 
 **searchDescription** | **String**|  | [optional] 
 **searchName** | **String**|  | [optional] 
 **searchNotificationEmailAddress** | **String**|  | [optional] 

### Return type

[**OrganizationPagination**](OrganizationPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="deleteRelationshipByOrganizationAndRelationship"></a>
# **deleteRelationshipByOrganizationAndRelationship**
> Organization deleteRelationshipByOrganizationAndRelationship(xKeyclicApp, organization, relationship, opts)

Remove one Relationship resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.RelationshipApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let relationship = "relationship_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.deleteRelationshipByOrganizationAndRelationship(xKeyclicApp, organization, relationship, opts, (error, data, response) => {
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
 **relationship** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postRelationshipByOrganization"></a>
# **postRelationshipByOrganization**
> Organization postRelationshipByOrganization(xKeyclicApp, relationshipData, organization, opts)

Create one Relationship resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.RelationshipApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let relationshipData = new @KeyclicSdkJavascript.RelationshipData(); // RelationshipData | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postRelationshipByOrganization(xKeyclicApp, relationshipData, organization, opts, (error, data, response) => {
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
 **relationshipData** | [**RelationshipData**](RelationshipData.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Organization**](Organization.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

