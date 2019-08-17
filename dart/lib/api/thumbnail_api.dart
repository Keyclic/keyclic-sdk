part of keyclic_sdk_api.api;

class ThumbnailApi {
  ThumbnailApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one Thumbnail resource.
  ///
  ///
  Future<MultipartFile> getThumbnailByBusinessActivityAndWidthAndHeight(
    String xKeyclicApp,
    String businessActivity,
    String width,
    String height, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (businessActivity == null) {
      throw ApiException(0, "Missing required param: businessActivity");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    String path =
        "/businessactivities/{businessActivity}/thumbnail/{width}/{height}"
            .replaceAll("{format}", "json")
            .replaceAll(
                "{" + "businessActivity" + "}", businessActivity.toString())
            .replaceAll("{" + "width" + "}", width.toString())
            .replaceAll("{" + "height" + "}", height.toString());

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }
}
