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
    final String path = "/security/password/change/{token}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "token" + "}", token.toString());

    // query params
    final List<QueryParam> queryParams = [];

    // header params
    final Map<String, String> headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = [
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = [];

    final PasswordData postBody = passwordData;

    final Response response = await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      contentTypes[0],
      authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return;
    }

    return;
  }
}
