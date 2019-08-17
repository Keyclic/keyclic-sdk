# @KeyclicSdkJavascript.ImageApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteImageByOperationAndImage**](ImageApi.md#deleteImageByOperationAndImage) | **DELETE** /operations/{operation}/images/{image} | Remove one Image resource.
[**getImageByBusinessActivityAndWidthAndHeight**](ImageApi.md#getImageByBusinessActivityAndWidthAndHeight) | **GET** /businessactivities/{businessActivity}/image/{width}/{height} | Retrieve one Image resource.
[**getImageByFeedbackAndImageAndWidthAndHeight**](ImageApi.md#getImageByFeedbackAndImageAndWidthAndHeight) | **GET** /feedbacks/{feedback}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByOperationAndImageAndWidthAndHeight**](ImageApi.md#getImageByOperationAndImageAndWidthAndHeight) | **GET** /operations/{operation}/images/{image}/{width}/{height} | Retrieve one Image resource.
[**getImageByPersonAndWidthAndHeight**](ImageApi.md#getImageByPersonAndWidthAndHeight) | **GET** /people/{person}/image/{width}/{height} | Retrieve one Image resource.
[**postImageByFeedback**](ImageApi.md#postImageByFeedback) | **POST** /feedbacks/{feedback}/images | Create one Image resource.
[**postImageByOperation**](ImageApi.md#postImageByOperation) | **POST** /operations/{operation}/images | Create one Image resource.


<a name="deleteImageByOperationAndImage"></a>
# **deleteImageByOperationAndImage**
> deleteImageByOperationAndImage(xKeyclicApp, operation, image, opts)

Remove one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource.

let image = "image_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.deleteImageByOperationAndImage(xKeyclicApp, operation, image, opts, (error, data, response) => {
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
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByBusinessActivityAndWidthAndHeight"></a>
# **getImageByBusinessActivityAndWidthAndHeight**
> File getImageByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let businessActivity = "businessActivity_example"; // String | The identifier of the resource.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getImageByBusinessActivityAndWidthAndHeight(xKeyclicApp, businessActivity, width, height, opts, (error, data, response) => {
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
 **businessActivity** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByFeedbackAndImageAndWidthAndHeight"></a>
# **getImageByFeedbackAndImageAndWidthAndHeight**
> File getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicApp, feedback, image, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let feedback = "feedback_example"; // String | The identifier of the resource.

let image = "image_example"; // String | The identifier of the resource.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getImageByFeedbackAndImageAndWidthAndHeight(xKeyclicApp, feedback, image, width, height, opts, (error, data, response) => {
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
 **feedback** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByOperationAndImageAndWidthAndHeight"></a>
# **getImageByOperationAndImageAndWidthAndHeight**
> File getImageByOperationAndImageAndWidthAndHeight(xKeyclicApp, operation, image, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let operation = "operation_example"; // String | The identifier of the resource.

let image = "image_example"; // String | The identifier of the resource.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getImageByOperationAndImageAndWidthAndHeight(xKeyclicApp, operation, image, width, height, opts, (error, data, response) => {
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
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **image** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getImageByPersonAndWidthAndHeight"></a>
# **getImageByPersonAndWidthAndHeight**
> File getImageByPersonAndWidthAndHeight(xKeyclicApp, person, width, height, opts)

Retrieve one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let person = "person_example"; // String | The identifier of the resource.

let width = "width_example"; // String | 

let height = "height_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getImageByPersonAndWidthAndHeight(xKeyclicApp, person, width, height, opts, (error, data, response) => {
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
 **person** | [**String**](.md)| The identifier of the resource. | 
 **width** | **String**|  | 
 **height** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postImageByFeedback"></a>
# **postImageByFeedback**
> Feedback postImageByFeedback(xKeyclicApp, imageData, feedback, opts)

Create one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let imageData = new @KeyclicSdkJavascript.ImageData(); // ImageData | 

let feedback = "feedback_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postImageByFeedback(xKeyclicApp, imageData, feedback, opts, (error, data, response) => {
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
 **imageData** | [**ImageData**](ImageData.md)|  | 
 **feedback** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Feedback**](Feedback.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postImageByOperation"></a>
# **postImageByOperation**
> Operation postImageByOperation(xKeyclicApp, imageData, operation, opts)

Create one Image resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.ImageApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let imageData = new @KeyclicSdkJavascript.ImageData(); // ImageData | 

let operation = "operation_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postImageByOperation(xKeyclicApp, imageData, operation, opts, (error, data, response) => {
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
 **imageData** | [**ImageData**](ImageData.md)|  | 
 **operation** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

