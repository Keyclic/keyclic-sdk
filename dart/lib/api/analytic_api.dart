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
    final String path = "/organizations/{organization}/analytics"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (options_property_ != null)
        ..._convertParametersForCollectionFormat(
            "options[property]", options_property_),
      if (options_sort_ != null)
        ..._convertParametersForCollectionFormat(
            "options[sort]", options_sort_),
    ];

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
      'GET',
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

    return apiClient.deserialize(response.body, 'Chart') as Chart;
  }
}
