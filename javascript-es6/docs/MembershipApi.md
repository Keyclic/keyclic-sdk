# @KeyclicSdkJavascript.MembershipApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetMembershipsByPerson**](MembershipApi.md#cgetMembershipsByPerson) | **GET** /people/{person}/memberships | Retrieve all Membership resources.


<a name="cgetMembershipsByPerson"></a>
# **cgetMembershipsByPerson**
> MemberPagination cgetMembershipsByPerson(xKeyclicApp, person, opts)

Retrieve all Membership resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.MembershipApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'role': "role_example", // String | 
  'roles': "roles_example", // String | 
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'searchFamilyName': "searchFamilyName_example", // String | 
  'searchGivenName': "searchGivenName_example", // String | 
  'searchJobTitle': "searchJobTitle_example", // String | 
  'searchTelephone': "searchTelephone_example", // String | 
  'searchUsername': "searchUsername_example", // String | 
  'searchEmail': "searchEmail_example" // String | 
};

apiInstance.cgetMembershipsByPerson(xKeyclicApp, person, opts, (error, data, response) => {
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
 **person** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **role** | **String**|  | [optional] 
 **roles** | **String**|  | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **searchFamilyName** | **String**|  | [optional] 
 **searchGivenName** | **String**|  | [optional] 
 **searchJobTitle** | **String**|  | [optional] 
 **searchTelephone** | **String**|  | [optional] 
 **searchUsername** | **String**|  | [optional] 
 **searchEmail** | **String**|  | [optional] 

### Return type

[**MemberPagination**](MemberPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8
