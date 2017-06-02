# KeyclicApiReference.SecurityApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post**](SecurityApi.md#post) | **POST** /security/login | Login.
[**postFacebook**](SecurityApi.md#postFacebook) | **POST** /security/oauth/facebook | Oauth Facebook.
[**postPassword**](SecurityApi.md#postPassword) | **POST** /security/password/change/{token} | Change password.
[**postPasswordRequest**](SecurityApi.md#postPasswordRequest) | **POST** /security/password/change-request | Send a change password request for the logged in person.
[**postRegister**](SecurityApi.md#postRegister) | **POST** /security/register | Register a new person.


<a name="post"></a>
# **post**
> AuthenticationSuccess post(body)

Login.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.SecurityApi();

let body = new KeyclicApiReference.SecurityLoginBody(); // SecurityLoginBody | 

apiInstance.post(body).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SecurityLoginBody**](SecurityLoginBody.md)|  | 

### Return type

[**AuthenticationSuccess**](AuthenticationSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postFacebook"></a>
# **postFacebook**
> AuthenticationSuccess postFacebook(accessToken)

Oauth Facebook.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.SecurityApi();

let accessToken = new KeyclicApiReference.SecurityOauthFacebookBody(); // SecurityOauthFacebookBody | 

apiInstance.postFacebook(accessToken).then((data) => {
  console.log('API called successfully. Returned data: ' + data);
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | [**SecurityOauthFacebookBody**](SecurityOauthFacebookBody.md)|  | 

### Return type

[**AuthenticationSuccess**](AuthenticationSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPassword"></a>
# **postPassword**
> postPassword(token, opts)

Change password.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.SecurityApi();

let token = "token_example"; // String | 

let opts = { 
  'password': "password_example" // String | 
};
apiInstance.postPassword(token, opts).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 
 **password** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPasswordRequest"></a>
# **postPasswordRequest**
> postPasswordRequest(opts)

Send a change password request for the logged in person.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.SecurityApi();

let opts = { 
  'email': "email_example" // String | 
};
apiInstance.postPasswordRequest(opts).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postRegister"></a>
# **postRegister**
> postRegister(xKeyclicApp, body)

Register a new person.

### Example
```javascript
import KeyclicApiReference from 'keyclic_api_reference';

let apiInstance = new KeyclicApiReference.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | The application token.

let body = new KeyclicApiReference.Person(); // Person | 

apiInstance.postRegister(xKeyclicApp, body).then(() => {
  console.log('API called successfully.');
}, (error) => {
  console.error(error);
});

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**| The application token. | [default to com.keyclic.app]
 **body** | [**Person**](Person.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

