part of keyclic_sdk_api.api;

class FollowApi {
  final ApiClient apiClient;

  FollowApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create one Follow resource.
  ///
  ///
  Future postFollowByFeed(String xKeyclicApp, String feed, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (feed == null) {
      throw ApiException(400, "Missing required param: feed");
    }

    // create path and map variables
    String path = "/feeds/{feed}/follow".replaceAll("{format}", "json").replaceAll("{" + "feed" + "}", feed.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }
}
