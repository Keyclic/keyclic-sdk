part of keyclic_sdk_api.api;

class SchemaApi {
  SchemaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one Schema resource.
  ///
  ///
  Future<Schema> getSchemaByBusinessActivity(
    String xKeyclicApp,
    String businessActivity, {
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

    // create path and map variables
    final String path = "/businessactivities/{businessActivity}/schema"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "businessActivity" + "}", businessActivity.toString());

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

    return apiClient.deserialize(response.body, 'Schema') as Schema;
  }
}
