part of keyclic_sdk_api.api;

class ResetApi {
  ResetApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Reset resource.
  ///
  ///
  Future<void> postReset(
    String xKeyclicApp,
    EmailData emailData, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (emailData == null) {
      throw ApiException(0, "Missing required param: emailData");
    }

    // create path and map variables
    String path =
        "/security/password/change-request".replaceAll("{format}", "json");

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

    Object postBody = emailData;

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
