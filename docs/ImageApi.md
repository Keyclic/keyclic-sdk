# KeyclicApi.ImageApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteImageByOperationAndImage**](ImageApi.md#deleteImageByOperationAndImage) | **DELETE** /operations/{operation}/images/{image} | Remove one Image resource.
[**getImageByFeedbackAndImageAndWidthAndHeight**](ImageApi.md#getImageByFeedbackAndImageAndWidthAndHeight) | **GET** /feedbacks/{feedback}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByOperationAndImageAndWidthAndHeight**](ImageApi.md#getImageByOperationAndImageAndWidthAndHeight) | **GET** /operations/{operation}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByPersonAndWidthAndHeight**](ImageApi.md#getImageByPersonAndWidthAndHeight) | **GET** /people/{person}/image/{width}/{height} | Retrieve one Image resource.
[**postImageByFeedback**](ImageApi.md#postImageByFeedback) | **POST** /feedbacks/{feedback}/images | Create one Image resource.
[**postImageByOperation**](ImageApi.md#postImageByOperation) | **POST** /operations/{operation}/images | Create one Image resource.


<a name="deleteImageByOperationAndImage"></a>
# **deleteImageByOperationAndImage**
> deleteImageByOperationAndImage(xKeyclicAppoperation, image, opts)

Remove one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let image = "image_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.deleteImageByOperationAndImage(xKeyclicAppoperation, image, opts, (error, data, response) => {
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
 **operation** | **String**| The identifier of the resource formatted as GUID string. | 
 **image** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

null (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByFeedbackAndImageAndWidthAndHeight"></a>
# **getImageByFeedbackAndImageAndWidthAndHeight**
> File getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicAppfeedback, image, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let image = "image_example"; // String | The identifier of the resource formatted as GUID string.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicAppfeedback, image, width, height, opts, (error, data, response) => {
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
 **image** | **String**| The identifier of the resource formatted as GUID string. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByOperationAndImageAndWidthAndHeight"></a>
# **getImageByOperationAndImageAndWidthAndHeight**
> File getImageByOperationAndImageAndWidthAndHeight(xKeyclicAppoperation, image, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let image = "image_example"; // String | The identifier of the resource formatted as GUID string.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.getImageByOperationAndImageAndWidthAndHeight(xKeyclicAppoperation, image, width, height, opts, (error, data, response) => {
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
 **operation** | **String**| The identifier of the resource formatted as GUID string. | 
 **image** | **String**| The identifier of the resource formatted as GUID string. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByPersonAndWidthAndHeight"></a>
# **getImageByPersonAndWidthAndHeight**
> File getImageByPersonAndWidthAndHeight(xKeyclicAppperson, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource formatted as GUID string.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
};

apiInstance.getImageByPersonAndWidthAndHeight(xKeyclicAppperson, width, height, opts, (error, data, response) => {
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
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postImageByFeedback"></a>
# **postImageByFeedback**
> Feedback postImageByFeedback(xKeyclicAppfeedback, opts)

Create one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'imageData': new KeyclicApi.ImageData() // ImageData | 
};

apiInstance.postImageByFeedback(xKeyclicAppfeedback, opts, (error, data, response) => {
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
 **imageData** | [**ImageData**](ImageData.md)|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postImageByOperation"></a>
# **postImageByOperation**
> Operation postImageByOperation(xKeyclicAppoperation, opts)

Create one Image resource.

### Example
```javascript
import KeyclicApi from 'keyclic_api';
let defaultClient = KeyclicApi.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new KeyclicApi.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource formatted as GUID string.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'imageData': new KeyclicApi.ImageData() // ImageData | 
};

apiInstance.postImageByOperation(xKeyclicAppoperation, opts, (error, data, response) => {
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
 **operation** | **String**| The identifier of the resource formatted as GUID string. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **imageData** | [**ImageData**](ImageData.md)|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

