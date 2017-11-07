# KeyclicApi.CategoryApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetCategories**](CategoryApi.md#cgetCategories) | **GET** /categories | Retrieve all Category resources.
[**cgetCategoriesByOrganization**](CategoryApi.md#cgetCategoriesByOrganization) | **GET** /organizations/{organization}/categories | Retrieve all Category resources.
[**getCategory**](CategoryApi.md#getCategory) | **GET** /categories/{category} | Retrieve one Category resource.
[**patchCategory**](CategoryApi.md#patchCategory) | **PATCH** /categories/{category} | Edit one Category resource.
[**postCategoryByOrganization**](CategoryApi.md#postCategoryByOrganization) | **POST** /organizations/{organization}/categories | Create one Category resource.


<a name="cgetCategories"></a>
# **cgetCategories**
> CategoryPagination cgetCategories(xKeyclicApp, , opts)

Retrieve all Category resources.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource formatted as GUID string.
  'organization': "organization_example", // String | The identifier of the resource formatted as GUID string.
  'geoCoordinates': "geoCoordinates_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'searchColor': "searchColor_example", // String | 
  'searchIcon': "searchIcon_example", // String | 
  'searchName': "searchName_example", // String | 
  'searchIdentificationNumber': "searchIdentificationNumber_example" // String | 
};

apiInstance.cgetCategories(xKeyclicApp, , opts, (error, data, response) => {
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
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **organization** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **geoCoordinates** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **searchColor** | **String**|  | [optional] 
 **searchIcon** | **String**|  | [optional] 
 **searchName** | **String**|  | [optional] 
 **searchIdentificationNumber** | **String**|  | [optional] 

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetCategoriesByOrganization"></a>
# **cgetCategoriesByOrganization**
> CategoryPagination cgetCategoriesByOrganization(xKeyclicApp, organization, opts)

Retrieve all Category resources.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource formatted as GUID string.
  'geoCoordinates': "geoCoordinates_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'searchColor': "searchColor_example", // String | 
  'searchIcon': "searchIcon_example", // String | 
  'searchName': "searchName_example", // String | 
  'searchIdentificationNumber': "searchIdentificationNumber_example" // String | 
};

apiInstance.cgetCategoriesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **geoCoordinates** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **searchColor** | **String**|  | [optional] 
 **searchIcon** | **String**|  | [optional] 
 **searchName** | **String**|  | [optional] 
 **searchIdentificationNumber** | **String**|  | [optional] 

### Return type

[**CategoryPagination**](CategoryPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getCategory"></a>
# **getCategory**
> Category getCategory(xKeyclicApp, category, opts)

Retrieve one Category resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let category = "category_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
};

apiInstance.getCategory(xKeyclicApp, category, opts, (error, data, response) => {
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
 **category** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchCategory"></a>
# **patchCategory**
> Category patchCategory(xKeyclicApp, category, opts)

Edit one Category resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let category = "category_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'categoryPatch': new KeyclicApi.CategoryPatch() // CategoryPatch | 
};

apiInstance.patchCategory(xKeyclicApp, category, opts, (error, data, response) => {
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
 **category** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **categoryPatch** | [**CategoryPatch**](CategoryPatch.md)|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postCategoryByOrganization"></a>
# **postCategoryByOrganization**
> Category postCategoryByOrganization(xKeyclicApp, organization, opts)

Create one Category resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.CategoryApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example", // String | 
  'categoryData': new KeyclicApi.CategoryData() // CategoryData | 
};

apiInstance.postCategoryByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
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
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **categoryData** | [**CategoryData**](CategoryData.md)|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

