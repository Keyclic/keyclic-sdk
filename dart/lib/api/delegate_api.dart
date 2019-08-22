part of keyclic_sdk_api.api;

class DelegateApi {
  DelegateApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Delegate resource.
  ///
  ///
  Future<Delegation> postDelegateByOrganization(
    String xKeyclicApp,
    DelegateData delegateData,
    String organization, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (delegateData == null) {
      throw ApiException(0, "Missing required param: delegateData");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/delegates"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

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

    final DelegateData postBody = delegateData;

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
      return null;
    }

    return apiClient.deserialize(response.body, 'Delegation') as Delegation;
  }
}
