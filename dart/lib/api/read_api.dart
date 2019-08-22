part of keyclic_sdk_api.api;

class ReadApi {
  ReadApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Read resource.
  ///
  ///
  Future<void> postReadByFeedAndGroup(
    String xKeyclicApp,
    String feed,
    String group, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feed == null) {
      throw ApiException(0, "Missing required param: feed");
    }

    if (group == null) {
      throw ApiException(0, "Missing required param: group");
    }

    // create path and map variables
    final String path = "/feeds/{feed}/read/{group}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feed" + "}", feed.toString())
        .replaceAll("{" + "group" + "}", group.toString());

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

    final List<String> authNames = [
      "bearer",
    ];

    final Object postBody = null;

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
