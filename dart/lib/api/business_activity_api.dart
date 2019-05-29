part of keyclic_sdk_api.api;

class BusinessActivityApi {
  final ApiClient apiClient;

  BusinessActivityApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all BusinessActivity resources.
  ///
  ///
  Future<BusinessActivityPagination> cgetBusinessActivities(String xKeyclicApp,
      {String acceptLanguage, String xKeyclicAppVersion, String geoCoordinates, String geoPoint, String organization, int page, int limit, String order, DateTime after, DateTime before}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    String path = "/businessactivities".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (geoCoordinates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "geo_coordinates", geoCoordinates));
    }
    if (geoPoint != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "geo_point", geoPoint));
    }
    if (organization != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "organization", organization));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'BusinessActivityPagination') as BusinessActivityPagination;
    } else {
      return null;
    }
  }

  /// Retrieve one BusinessActivity resource.
  ///
  ///
  Future<BusinessActivity> getBusinessActivity(String xKeyclicApp, String businessActivity, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (businessActivity == null) {
      throw ApiException(400, "Missing required param: businessActivity");
    }

    // create path and map variables
    String path = "/businessactivities/{businessActivity}".replaceAll("{format}", "json").replaceAll("{" + "businessActivity" + "}", businessActivity.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'BusinessActivity') as BusinessActivity;
    } else {
      return null;
    }
  }
}
