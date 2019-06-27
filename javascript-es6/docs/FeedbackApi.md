# @KeyclicSdkJavascript.FeedbackApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFeedback**](FeedbackApi.md#cgetFeedback) | **GET** /feedbacks | Retrieve all Feedback resources.
[**cgetFeedbackByPerson**](FeedbackApi.md#cgetFeedbackByPerson) | **GET** /people/{person}/feedbacks | Retrieve all Feedback resources.
[**getFeedback**](FeedbackApi.md#getFeedback) | **GET** /feedbacks/{feedback} | Retrieve one Feedback resource.


<a name="cgetFeedback"></a>
# **cgetFeedback**
> FeedbackPagination cgetFeedback(xKeyclicApp, , opts)

Retrieve all Feedback resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'state': "DELIVERED", // String | 
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoHash': "geoHash_example", // String | 
  'geoNear': "geoNear_example", // String | One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'organization': "organization_example", // String | The identifier of the resource formatted as GUID string.
  'visibility': "VISIBILITY_PUBLIC", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
};

apiInstance.cgetFeedback(xKeyclicApp, , opts, (error, data, response) => {
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
 **state** | **String**|  | [optional] [default to DELIVERED]
 **category** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoHash** | **String**|  | [optional] 
 **geoNear** | **String**| One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **visibility** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetFeedbackByPerson"></a>
# **cgetFeedbackByPerson**
> FeedbackPagination cgetFeedbackByPerson(xKeyclicApp, person, opts)

Retrieve all Feedback resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoHash': "geoHash_example", // String | 
  'geoNear': "geoNear_example", // String | One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'organization': "organization_example", // String | The identifier of the resource formatted as GUID string.
  'state': "state_example", // String | 
  'visibility': "VISIBILITY_PUBLIC", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
};

apiInstance.cgetFeedbackByPerson(xKeyclicApp, person, opts, (error, data, response) => {
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
 **category** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoHash** | **String**|  | [optional] 
 **geoNear** | **String**| One latitude, one longitude and one radius (in meters) serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource formatted as GUID string. | [optional] 
 **state** | **String**|  | [optional] 
 **visibility** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getFeedback"></a>
# **getFeedback**
> Feedback getFeedback(xKeyclicApp, feedback, opts)

Retrieve one Feedback resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getFeedback(xKeyclicApp, feedback, opts, (error, data, response) => {
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
 **feedback** | [**String**](.md)| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

