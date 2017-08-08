# KeyclicApi.MemberApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetMembersByOrganization**](MemberApi.md#cgetMembersByOrganization) | **GET** /organizations/{organization}/members | Retrieve all Member resources.
[**deleteMemberByOrganizationAndMember**](MemberApi.md#deleteMemberByOrganizationAndMember) | **DELETE** /organizations/{organization}/members/{member} | Remove one Member resource.
[**getMemberByOrganizationAndMember**](MemberApi.md#getMemberByOrganizationAndMember) | **GET** /organizations/{organization}/members/{member} | Retrieve one Member resource.
[**patchMemberByOrganizationAndMember**](MemberApi.md#patchMemberByOrganizationAndMember) | **PATCH** /organizations/{organization}/members/{member} | Edit one Member resource.
[**postMemberByOrganization**](MemberApi.md#postMemberByOrganization) | **POST** /organizations/{organization}/members | Create one Member resource.


<a name="cgetMembersByOrganization"></a>
# **cgetMembersByOrganization**
> MemberPagination cgetMembersByOrganization(xKeyclicApporganization, opts)

Retrieve all Member resources.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.MemberApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'searchFamilyName': "searchFamilyName_example", // String | 
  'searchGivenName': "searchGivenName_example", // String | 
  'searchJobTitle': "searchJobTitle_example", // String | 
  'searchUsername': "searchUsername_example", // String | 
  'searchEmail': "searchEmail_example" // String | 
};

apiInstance.cgetMembersByOrganization(xKeyclicApporganization, opts, (error, data, response) => {
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
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **searchFamilyName** | **String**|  | [optional] 
 **searchGivenName** | **String**|  | [optional] 
 **searchJobTitle** | **String**|  | [optional] 
 **searchUsername** | **String**|  | [optional] 
 **searchEmail** | **String**|  | [optional] 

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="deleteMemberByOrganizationAndMember"></a>
# **deleteMemberByOrganizationAndMember**
> deleteMemberByOrganizationAndMember(xKeyclicApporganization, member, opts)

Remove one Member resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.MemberApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let member = "member_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.deleteMemberByOrganizationAndMember(xKeyclicApporganization, member, opts, (error, data, response) => {
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
 **organization** | **String**| The identifier of the resource formatted as GUID string. | 
 **member** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

null (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getMemberByOrganizationAndMember"></a>
# **getMemberByOrganizationAndMember**
> Member getMemberByOrganizationAndMember(xKeyclicApporganization, member, opts)

Retrieve one Member resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.MemberApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let member = "member_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.getMemberByOrganizationAndMember(xKeyclicApporganization, member, opts, (error, data, response) => {
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
 **member** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchMemberByOrganizationAndMember"></a>
# **patchMemberByOrganizationAndMember**
> Member patchMemberByOrganizationAndMember(xKeyclicApporganization, member, opts)

Edit one Member resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.MemberApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let member = "member_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'memberPatch': new KeyclicApi.MemberPatch() // MemberPatch | 
};

apiInstance.patchMemberByOrganizationAndMember(xKeyclicApporganization, member, opts, (error, data, response) => {
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
 **member** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **memberPatch** | [**MemberPatch**](MemberPatch.md)|  | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postMemberByOrganization"></a>
# **postMemberByOrganization**
> Member postMemberByOrganization(xKeyclicApporganization, opts)

Create one Member resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.MemberApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'personData': new KeyclicApi.PersonData() // PersonData | 
};

apiInstance.postMemberByOrganization(xKeyclicApporganization, opts, (error, data, response) => {
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
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **personData** | [**PersonData**](PersonData.md)|  | [optional] 

### Return type

[**Member**](Member.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

