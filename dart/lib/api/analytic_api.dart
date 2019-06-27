part of keyclic_sdk_api.api;

class AnalyticApi {
  final ApiClient apiClient;

  AnalyticApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve one Analytic resource.
  ///
  ///
  Future<Chart> getAnalyticByOrganization(
      String xKeyclicApp, String organization,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String category,
      String place,
      String state,
      String options_property_,
      String options_sort_}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/analytics"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (category != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "category", category));
    }
    if (place != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "place", place));
    }
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if (options_property_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "options[property]", options_property_));
    }
    if (options_sort_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "options[sort]", options_sort_));
    }
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
      return apiClient.deserialize(response.body, 'Chart') as Chart;
    } else {
      return null;
    }
  }
}
