# @KeyclicSdkJavascript.SecurityApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postConnectFacebook**](SecurityApi.md#postConnectFacebook) | **POST** /security/connect/facebook | Create one ConnectFacebook resource.
[**postLogin**](SecurityApi.md#postLogin) | **POST** /security/login | Create one Login resource.
[**postPasswordChangeByToken**](SecurityApi.md#postPasswordChangeByToken) | **POST** /security/password/change/{token} | Create one PasswordChange resource.
[**postPasswordReset**](SecurityApi.md#postPasswordReset) | **POST** /security/password/change-request | Create one PasswordReset resource.
[**postRegister**](SecurityApi.md#postRegister) | **POST** /security/register | Create one Register resource.


<a name="postConnectFacebook"></a>
# **postConnectFacebook**
> SuccessLogin postConnectFacebook(xKeyclicApp, facebookConnectData, opts)

Create one ConnectFacebook resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let facebookConnectData = new @KeyclicSdkJavascript.FacebookConnectData(); // FacebookConnectData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postConnectFacebook(xKeyclicApp, facebookConnectData, opts, (error, data, response) => {
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
 **facebookConnectData** | [**FacebookConnectData**](FacebookConnectData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postLogin"></a>
# **postLogin**
> SuccessLogin postLogin(xKeyclicApp, loginData, opts)

Create one Login resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let loginData = new @KeyclicSdkJavascript.LoginData(); // LoginData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postLogin(xKeyclicApp, loginData, opts, (error, data, response) => {
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
 **loginData** | [**LoginData**](LoginData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postPasswordChangeByToken"></a>
# **postPasswordChangeByToken**
> postPasswordChangeByToken(xKeyclicApp, passwordChangeData, token, opts)

Create one PasswordChange resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let passwordChangeData = new @KeyclicSdkJavascript.PasswordChangeData(); // PasswordChangeData | 

let token = "token_example"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postPasswordChangeByToken(xKeyclicApp, passwordChangeData, token, opts, (error, data, response) => {
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
 **passwordChangeData** | [**PasswordChangeData**](PasswordChangeData.md)|  | 
 **token** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postPasswordReset"></a>
# **postPasswordReset**
> postPasswordReset(xKeyclicApp, resetPasswordData, opts)

Create one PasswordReset resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let resetPasswordData = new @KeyclicSdkJavascript.ResetPasswordData(); // ResetPasswordData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postPasswordReset(xKeyclicApp, resetPasswordData, opts, (error, data, response) => {
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
 **resetPasswordData** | [**ResetPasswordData**](ResetPasswordData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postRegister"></a>
# **postRegister**
> Person postRegister(xKeyclicApp, registerData, opts)

Create one Register resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.SecurityApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let registerData = new @KeyclicSdkJavascript.RegisterData(); // RegisterData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postRegister(xKeyclicApp, registerData, opts, (error, data, response) => {
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
 **registerData** | [**RegisterData**](RegisterData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Person**](Person.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

