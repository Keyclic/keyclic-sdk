# @KeyclicSdkJavascript.PublicationApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePublication**](PublicationApi.md#deletePublication) | **DELETE** /publications/{publication} | Remove one Publication resource.
[**getPublication**](PublicationApi.md#getPublication) | **GET** /publications/{publication} | Retrieve one Publication resource.
[**postPublication**](PublicationApi.md#postPublication) | **POST** /publications | Create one Publication resource.


<a name="deletePublication"></a>
# **deletePublication**
> deletePublication(xKeyclicApp, publication, opts)

Remove one Publication resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PublicationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let publication = "publication_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.deletePublication(xKeyclicApp, publication, opts, (error, data, response) => {
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
 **publication** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getPublication"></a>
# **getPublication**
> Publication getPublication(xKeyclicApp, publication, opts)

Retrieve one Publication resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PublicationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let publication = "publication_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getPublication(xKeyclicApp, publication, opts, (error, data, response) => {
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
 **publication** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Publication**](Publication.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postPublication"></a>
# **postPublication**
> Publication postPublication(xKeyclicApp, publicationData, opts)

Create one Publication resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PublicationApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let publicationData = new @KeyclicSdkJavascript.PublicationData(); // PublicationData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postPublication(xKeyclicApp, publicationData, opts, (error, data, response) => {
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
 **publicationData** | [**PublicationData**](PublicationData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Publication**](Publication.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

