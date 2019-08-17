part of keyclic_sdk_api.api;

class RelationshipApi {
  final ApiClient apiClient;

  RelationshipApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Remove one Relationship resource.
  ///
  ///
  Future<Organization> deleteRelationshipByOrganizationAndService(
      String xKeyclicApp, String organization, String service,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }
    if (service == null) {
      throw ApiException(400, "Missing required param: service");
    }

    // create path and map variables
    String path = "/organizations/{organization}/relationships/{service}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString())
        .replaceAll("{" + "service" + "}", service.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Organization')
          as Organization;
    } else {
      return null;
    }
  }

  /// Create one Relationship resource.
  ///
  ///
  Future<Organization> postRelationshipByOrganization(String xKeyclicApp,
      ExternalServiceData externalServiceData, String organization,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = externalServiceData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (externalServiceData == null) {
      throw ApiException(400, "Missing required param: externalServiceData");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/relationships"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Organization')
          as Organization;
    } else {
      return null;
    }
  }
}
