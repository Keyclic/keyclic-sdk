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
    String path = "/feeds/{feed}/read/{group}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feed" + "}", feed.toString())
        .replaceAll("{" + "group" + "}", group.toString());

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
    List<String> authNames = ["bearer"];

    Object postBody;

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
