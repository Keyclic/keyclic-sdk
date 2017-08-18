# KeyclicApi.FeedbackApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetFeedbacks**](FeedbackApi.md#cgetFeedbacks) | **GET** /feedbacks | Retrieve all Feedback resources.
[**cgetFeedbacksByPerson**](FeedbackApi.md#cgetFeedbacksByPerson) | **GET** /people/{person}/feedbacks | Retrieve all Feedback resources.
[**getFeedback**](FeedbackApi.md#getFeedback) | **GET** /feedbacks/{feedback} | Retrieve one Feedback resource.


<a name="cgetFeedbacks"></a>
# **cgetFeedbacks**
> FeedbackPagination cgetFeedbacks(xKeyclicApp, , opts)

Retrieve all Feedback resources.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'state': "DELIVERED", // String | 
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'geoHash': "geoHash_example", // String | 
  'organization': "organization_example", // String | The identifier of the resource formatted as GUID string.
  'visibility': "VISIBILITY_PUBLIC", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoNearGeoCoordinates': "geoNearGeoCoordinates_example", // String | 
  'geoNearRadius': 56 // Number | 
};

apiInstance.cgetFeedbacks(xKeyclicApp, , opts, (error, data, response) => {
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
 **state** | **String**|  | [optional] [default to DELIVERED]
 **category** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **geoHash** | **String**|  | [optional] 
 **organization** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **visibility** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoNearGeoCoordinates** | **String**|  | [optional] 
 **geoNearRadius** | **Number**|  | [optional] 

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetFeedbacksByPerson"></a>
# **cgetFeedbacksByPerson**
> FeedbackPagination cgetFeedbacksByPerson(xKeyclicApp, person, opts)

Retrieve all Feedback resources.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'category': "category_example", // String | The identifier of the resource formatted as GUID string.
  'geoHash': "geoHash_example", // String | 
  'organization': "organization_example", // String | The identifier of the resource formatted as GUID string.
  'state': "state_example", // String | 
  'visibility': "VISIBILITY_PUBLIC", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10, // Number | Page of the overview.
  'order': "desc", // String | 
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoNearGeoCoordinates': "geoNearGeoCoordinates_example", // String | 
  'geoNearRadius': 56 // Number | 
};

apiInstance.cgetFeedbacksByPerson(xKeyclicApp, person, opts, (error, data, response) => {
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
 **person** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **category** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **geoHash** | **String**|  | [optional] 
 **organization** | **String**| The identifier of the resource formatted as GUID string. | [optional] 
 **state** | **String**|  | [optional] 
 **visibility** | **String**|  | [optional] [default to VISIBILITY_PUBLIC]
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]
 **order** | **String**|  | [optional] [default to desc]
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoNearGeoCoordinates** | **String**|  | [optional] 
 **geoNearRadius** | **Number**|  | [optional] 

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
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.FeedbackApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
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
 **feedback** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

