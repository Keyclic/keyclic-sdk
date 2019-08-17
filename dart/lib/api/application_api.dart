part of keyclic_sdk_api.api;

class ApplicationApi {
  ApplicationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one Application resource.
  ///
  ///
  Future<Application> getApplication(
    String xKeyclicApp,
    String application, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (application == null) {
      throw ApiException(0, "Missing required param: application");
    }

    // create path and map variables
    String path = "/applications/{application}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "application" + "}", application.toString());

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

    Object postBody;

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Application') as Application;
  }
}
