part of keyclic_sdk_api.api;

class FacebookApi {
  FacebookApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Facebook resource.
  ///
  ///
  Future<SuccessLogin> postFacebook(
    String xKeyclicApp,
    FacebookConnectData facebookConnectData, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (facebookConnectData == null) {
      throw ApiException(0, "Missing required param: facebookConnectData");
    }

    // create path and map variables
    final String path =
        "/security/connect/facebook".replaceAll("{format}", "json");

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

    final FacebookConnectData postBody = facebookConnectData;

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
      return null;
    }

    return apiClient.deserialize(response.body, 'SuccessLogin') as SuccessLogin;
  }
}
