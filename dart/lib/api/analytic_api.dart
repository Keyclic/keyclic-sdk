part of keyclic_sdk_api.api;

class AnalyticApi {
  AnalyticApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one Analytic resource.
  ///
  ///
  Future<Chart> getAnalyticByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    String category,
    String place,
    String state,
    String options_property_,
    String options_sort_,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/analytics"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
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

    return apiClient.deserialize(response.body, 'Chart') as Chart;
  }
}
