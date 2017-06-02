# KeyclicApiReference.FeedbackApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cget**](FeedbackApi.md#cget) | **GET** /feedbacks | Retrieve all feedbacks for the given application.
[**cgetByPerson**](FeedbackApi.md#cgetByPerson) | **GET** /people/{person}/feedbacks | Retrieve all feedbacks for the given person.
[**get**](FeedbackApi.md#get) | **GET** /feedbacks/{feedback} | Retrieve a feedback.
[**patchState**](FeedbackApi.md#patchState) | **PATCH** /feedbacks/{feedback}/state | Apply a state transition on the given feedback.
[**postImage**](FeedbackApi.md#postImage) | **POST** /feedbacks/{feedback}/images | Add a new image on the given feedback.
[**postIssue**](FeedbackApi.md#postIssue) | **POST** /feedbacks/issues | Create a new feedback (type issue).


<a name="cget"></a>
# **cget**
> FeedbackPagination cget(opts)

Retrieve all feedbacks for the given application.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'before': new Date("2013-10-20"), // Date | Filter by the creation date.
  'after': new Date("2013-10-20"), // Date | Filter by the creation date.
  'geoNear': "geoNear_example", // String | Filter by a radius and a distance.
  'geoHash': "geoHash_example", // String | Filter by a geohash.
  'organization': "organization_example", // String | Filter by an organization.
  'category': "category_example" // String | Filter by a category.
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
 **before** | **Date**| Filter by the creation date. | [optional] 
 **after** | **Date**| Filter by the creation date. | [optional] 
 **geoNear** | **String**| Filter by a radius and a distance. | [optional] 
 **geoHash** | **String**| Filter by a geohash. | [optional] 
 **organization** | **String**| Filter by an organization. | [optional] 
 **category** | **String**| Filter by a category. | [optional] 

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="cgetByPerson"></a>
# **cgetByPerson**
> FeedbackPagination cgetByPerson(person, opts)

Retrieve all feedbacks for the given person.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let person = "person_example"; // String | The person id.

let opts = { 
  'page': 1, // Number | The page number of the overview.
  'limit': 20, // Number | The number of items per page.
  'before': "before_example", // String | 
  'after': "after_example" // String | 
};
apiInstance.cgetByPerson(person, opts).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **person** | **String**| The person id. | 
 **page** | **Number**| The page number of the overview. | [optional] [default to 1]
 **limit** | **Number**| The number of items per page. | [optional] [default to 20]
 **before** | **String**|  | [optional] 
 **after** | **String**|  | [optional] 

### Return type

[**FeedbackPagination**](FeedbackPagination.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="get"></a>
# **get**
> Feedback get(feedback)

Retrieve a feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let feedback = "feedback_example"; // String | 

apiInstance.get(feedback).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**|  | 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="patchState"></a>
# **patchState**
> Feedback patchState(feedback, body)

Apply a state transition on the given feedback.

Apply transition for a feedback.  For more informations about PATCH implementation, please refer to the RFC 5789.  • https://tools.ietf.org/html/rfc5789  Required transition must be send as a JSON patch document.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let feedback = "feedback_example"; // String | 

let body = [new KeyclicApiReference.FeedbackStatePatchDocument()]; // [FeedbackStatePatchDocument] | A JSON document according the rfc5789 specification.

apiInstance.patchState(feedback, body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**|  | 
 **body** | [**[FeedbackStatePatchDocument]**](FeedbackStatePatchDocument.md)| A JSON document according the rfc5789 specification. | 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postImage"></a>
# **postImage**
> Feedback postImage(feedback, image)

Add a new image on the given feedback.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let feedback = "feedback_example"; // String | The feedback guid.

let image = "image_example"; // String | The image as a string (encoded in base64).

apiInstance.postImage(feedback, image).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | **String**| The feedback guid. | 
 **image** | **String**| The image as a string (encoded in base64). | 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postIssue"></a>
# **postIssue**
> Feedback postIssue(body)

Create a new feedback (type issue).

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';
let defaultClient = KeyclicApiReference.ApiClient.default;

// Configure OAuth2 access token for authorization: JWT
let JWT = defaultClient.authentications['JWT'];
JWT.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new KeyclicApiReference.FeedbackApi();

let body = new KeyclicApiReference.FeedbackBody(); // FeedbackBody | 

apiInstance.postIssue(body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FeedbackBody**](FeedbackBody.md)|  | 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

