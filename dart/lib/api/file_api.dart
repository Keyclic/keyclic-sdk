part of keyclic_sdk_api.api;

class FileApi {
  final ApiClient apiClient;

  FileApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve one File resource.
  ///
  ///
  Future<MultipartFile> getFileByDocument(String xKeyclicApp, String document,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (document == null) {
      throw ApiException(400, "Missing required param: document");
    }

    // create path and map variables
    String path = "/documents/{document}/file"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "document" + "}", document.toString());

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
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }
}
