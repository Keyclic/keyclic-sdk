# keyclic_sdk_api.api.SecurityApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postConnectFacebook**](SecurityApi.md#postConnectFacebook) | **POST** /security/connect/facebook | Create one ConnectFacebook resource.
[**postLogin**](SecurityApi.md#postLogin) | **POST** /security/login | Create one Login resource.
[**postPasswordChangeByToken**](SecurityApi.md#postPasswordChangeByToken) | **POST** /security/password/change/{token} | Create one PasswordChange resource.
[**postPasswordReset**](SecurityApi.md#postPasswordReset) | **POST** /security/password/change-request | Create one PasswordReset resource.
[**postRegister**](SecurityApi.md#postRegister) | **POST** /security/register | Create one Register resource.


# **postConnectFacebook**
> SuccessLogin postConnectFacebook(xKeyclicApp, facebookConnectData, acceptLanguage, xKeyclicAppVersion)

Create one ConnectFacebook resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = SecurityApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var facebookConnectData = FacebookConnectData(); // FacebookConnectData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postConnectFacebook(xKeyclicApp, facebookConnectData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->postConnectFacebook: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLogin**
> SuccessLogin postLogin(xKeyclicApp, loginData, acceptLanguage, xKeyclicAppVersion)

Create one Login resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = SecurityApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var loginData = LoginData(); // LoginData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postLogin(xKeyclicApp, loginData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->postLogin: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPasswordChangeByToken**
> postPasswordChangeByToken(xKeyclicApp, passwordChangeData, token, acceptLanguage, xKeyclicAppVersion)

Create one PasswordChange resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = SecurityApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var passwordChangeData = PasswordChangeData(); // PasswordChangeData | 
var token = token_example; // String | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.postPasswordChangeByToken(xKeyclicApp, passwordChangeData, token, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling SecurityApi->postPasswordChangeByToken: $e\n");
}
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPasswordReset**
> postPasswordReset(xKeyclicApp, resetPasswordData, acceptLanguage, xKeyclicAppVersion)

Create one PasswordReset resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';

var api_instance = SecurityApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var resetPasswordData = ResetPasswordData(); // ResetPasswordData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.postPasswordReset(xKeyclicApp, resetPasswordData, acceptLanguage, xKeyclicAppVersion);
} catch (e) {
    print("Exception when calling SecurityApi->postPasswordReset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **resetPasswordData** | [**ResetPasswordData**](ResetPasswordData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postRegister**
> Person postRegister(xKeyclicApp, registerData, acceptLanguage, xKeyclicAppVersion)

Create one Register resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//keyclic_sdk_api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//keyclic_sdk_api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = SecurityApi();
var xKeyclicApp = xKeyclicApp_example; // String | 
var registerData = RegisterData(); // RegisterData | 
var acceptLanguage = acceptLanguage_example; // String | 
var xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    var result = api_instance.postRegister(xKeyclicApp, registerData, acceptLanguage, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->postRegister: $e\n");
}
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

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

