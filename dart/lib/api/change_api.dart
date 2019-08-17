part of keyclic_sdk_api.api;

class ChangeApi {
  ChangeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Change resource.
  ///
  ///
  Future<void> postChangeByToken(
    String xKeyclicApp,
    PasswordData passwordData,
    String token, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (passwordData == null) {
      throw ApiException(0, "Missing required param: passwordData");
    }

    if (token == null) {
      throw ApiException(0, "Missing required param: token");
    }

    // create path and map variables
    String path = "/security/password/change/{token}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "token" + "}", token.toString());

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

    Object postBody = passwordData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return;
    }

    return;
  }
}
