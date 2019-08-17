part of keyclic_sdk_api.api;

class RegisterApi {
  RegisterApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Register resource.
  ///
  ///
  Future<Person> postRegister(
    String xKeyclicApp,
    RegisterData registerData, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (registerData == null) {
      throw ApiException(0, "Missing required param: registerData");
    }

    // create path and map variables
    String path = "/security/register".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = [];

    Object postBody = registerData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Person') as Person;
  }
}
