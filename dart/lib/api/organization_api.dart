part of keyclic_sdk_api.api;

class OrganizationApi {
  final ApiClient apiClient;

  OrganizationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Organization resources.
  ///
  ///
  Future<OrganizationPagination> cgetOrganizations(String xKeyclicApp,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String businessActivity,
      DateTime after,
      DateTime before,
      DateTime disabledAt,
      String geoPoint,
      String geoCoordinates,
      String order,
      String organization,
      String query,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    String path = "/organizations".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (businessActivity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "business_activity", businessActivity));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (disabledAt != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "disabledAt", disabledAt));
    }
    if (geoPoint != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_point", geoPoint));
    }
    if (geoCoordinates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "geo_coordinates", geoCoordinates));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (organization != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "organization", organization));
    }
    if (query != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
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
      return apiClient.deserialize(response.body, 'OrganizationPagination')
          as OrganizationPagination;
    } else {
      return null;
    }
  }

  /// Retrieve one Organization resource.
  ///
  ///
  Future<Organization> getOrganization(String xKeyclicApp, String organization,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}"
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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Organization')
          as Organization;
    } else {
      return null;
    }
  }

  /// Edit one Organization resource.
  ///
  ///
  Future<Organization> patchOrganization(String xKeyclicApp,
      OrganizationPatch organizationPatch, String organization,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = organizationPatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organizationPatch == null) {
      throw ApiException(400, "Missing required param: organizationPatch");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}"
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

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
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

  /// Create one Organization resource.
  ///
  ///
  Future<Organization> postOrganization(
      String xKeyclicApp, OrganizationData organizationData,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = organizationData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organizationData == null) {
      throw ApiException(400, "Missing required param: organizationData");
    }

    // create path and map variables
    String path = "/organizations".replaceAll("{format}", "json");

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
