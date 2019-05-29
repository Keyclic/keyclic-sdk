part of keyclic_sdk_api.api;

class ChangeApi {
  final ApiClient apiClient;

  ChangeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create one Change resource.
  ///
  ///
  Future postChangeByToken(
      String xKeyclicApp, PasswordData passwordData, String token,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = passwordData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (passwordData == null) {
      throw ApiException(400, "Missing required param: passwordData");
    }
    if (token == null) {
      throw ApiException(400, "Missing required param: token");
    }

    // create path and map variables
    String path = "/security/password/change/{token}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "token" + "}", token.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }
}
