part of keyclic_sdk_api.api;

class BusinessActivityApi {
  BusinessActivityApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all BusinessActivity resources.
  ///
  ///
  Future<BusinessActivityPagination> cgetBusinessActivities(
    String xKeyclicApp, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String geoPoint,
    String geoCoordinates,
    String order,
    String organization,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    final String path = "/business-activities".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organization != null)
        ..._convertParametersForCollectionFormat("organization", organization),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'BusinessActivityPagination')
        as BusinessActivityPagination;
  }

  /// Retrieve one BusinessActivity resource.
  ///
  ///
  Future<BusinessActivity> getBusinessActivity(
    String xKeyclicApp,
    String businessActivity, {
    String acceptLanguage,
    DateTime xDateTime,
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
    final String path = "/business-activities/{businessActivity}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "businessActivity" + "}", businessActivity.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'BusinessActivity')
        as BusinessActivity;
  }

  /// Retrieve one Schema resource.
  ///
  ///
  Future<Schema> getSchemaByBusinessActivity(
    String xKeyclicApp,
    String businessActivity, {
    String acceptLanguage,
    DateTime xDateTime,
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
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion,
    };

    final List<String> contentTypes = <String>[
      "application/json;charset=UTF-8",
      "application/json",
    ];

    final List<String> authNames = <String>[
      "bearer",
    ];

    final Response response = await apiClient.invokeAPI(
      path: path,
      method: 'GET',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
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
