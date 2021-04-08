part of keyclic_sdk_api.api;

class OrganizationApi {
  OrganizationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Category resources.
  ///
  ///
  Future<CategoryPagination> cgetCategoriesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String businessActivity,
    List<String> businessActivities__,
    DateTime after,
    DateTime before,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String order,
    List<String> organizations__,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/categories"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            "business_activity", businessActivity),
      if (businessActivities__ != null)
        ..._convertParametersForCollectionFormat(
            "business_activities[]", businessActivities__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (leaf != null) ..._convertParametersForCollectionFormat("leaf", leaf),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'CategoryPagination')
        as CategoryPagination;
  }

  /// Retrieve all ExternalService resources.
  ///
  ///
  Future<ExternalServicePagination> cgetExternalServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/external-services"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'ExternalServicePagination')
        as ExternalServicePagination;
  }

  /// Retrieve all InternalService resources.
  ///
  ///
  Future<InternalServicePagination> cgetInternalServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/internal-services"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'InternalServicePagination')
        as InternalServicePagination;
  }

  /// Retrieve all Member resources.
  ///
  ///
  Future<MemberPagination> cgetMembersByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String permission,
    String query,
    String role,
    List<String> roles__,
    String type,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/members"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (permission != null)
        ..._convertParametersForCollectionFormat("permission", permission),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (role != null) ..._convertParametersForCollectionFormat("role", role),
      if (roles__ != null)
        ..._convertParametersForCollectionFormat("roles[]", roles__,
            collectionFormat: "multi"),
      if (type != null) ..._convertParametersForCollectionFormat("type", type),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'MemberPagination')
        as MemberPagination;
  }

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String assignedTo,
    List<String> assignedTos__,
    DateTime after,
    DateTime before,
    String order,
    List<String> organizations__,
    String query,
    String state,
    List<String> states__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat("assigned_to", assignedTo),
      if (assignedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "assigned_tos[]", assignedTos__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'OperationPagination')
        as OperationPagination;
  }

  /// Retrieve all Organization resources.
  ///
  ///
  Future<OrganizationPagination> cgetOrganizations(
    String xKeyclicApp, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String businessActivity,
    List<String> businessActivities__,
    DateTime after,
    DateTime before,
    DateTime disabledAt,
    String geoPoint,
    String geoCoordinates,
    String order,
    String organization,
    List<String> organizations__,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    final String path = "/organizations".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            "business_activity", businessActivity),
      if (businessActivities__ != null)
        ..._convertParametersForCollectionFormat(
            "business_activities[]", businessActivities__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (disabledAt != null)
        ..._convertParametersForCollectionFormat("disabledAt", disabledAt),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organization != null)
        ..._convertParametersForCollectionFormat("organization", organization),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'OrganizationPagination')
        as OrganizationPagination;
  }

  /// Retrieve all Place resources.
  ///
  ///
  Future<PlacePagination> cgetPlacesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String businessActivity,
    List<String> businessActivities__,
    DateTime after,
    DateTime before,
    String geoElevation,
    List<String> geoHash__,
    String geoPoint,
    String geoCoordinates,
    String leaf,
    String order,
    List<String> organizations__,
    String parent,
    List<String> parents__,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/places"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            "business_activity", businessActivity),
      if (businessActivities__ != null)
        ..._convertParametersForCollectionFormat(
            "business_activities[]", businessActivities__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (geoElevation != null)
        ..._convertParametersForCollectionFormat("geo_elevation", geoElevation),
      if (geoHash__ != null)
        ..._convertParametersForCollectionFormat("geo_hash[]", geoHash__,
            collectionFormat: "multi"),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (leaf != null) ..._convertParametersForCollectionFormat("leaf", leaf),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organizations__ != null)
        ..._convertParametersForCollectionFormat(
            "organizations[]", organizations__,
            collectionFormat: "multi"),
      if (parent != null)
        ..._convertParametersForCollectionFormat("parent", parent),
      if (parents__ != null)
        ..._convertParametersForCollectionFormat("parents[]", parents__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'PlacePagination')
        as PlacePagination;
  }

  /// Retrieve all Publication resources.
  ///
  ///
  Future<PublicationPagination> cgetPublicationsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String place,
    List<String> places__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/publications"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (places__ != null)
        ..._convertParametersForCollectionFormat("places[]", places__,
            collectionFormat: "multi"),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'PublicationPagination')
        as PublicationPagination;
  }

  /// Retrieve all Report resources.
  ///
  ///
  Future<ReportPagination> cgetReportsByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String assignedTo,
    List<String> assignedTos__,
    String batch,
    List<String> batches__,
    String category,
    List<String> categories__,
    String createdBy,
    List<String> createdBies__,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTos__,
    String hasDocuments,
    String managedBy,
    List<String> managedBies__,
    String operationStateAll,
    String operationState,
    List<String> operationStates__,
    String order,
    String phase,
    List<String> phases__,
    String place,
    List<String> places__,
    String priority,
    List<String> priorities__,
    String query,
    String rating,
    String state,
    List<String> states__,
    String visibility__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/reports"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat("assigned_to", assignedTo),
      if (assignedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "assigned_tos[]", assignedTos__,
            collectionFormat: "multi"),
      if (batch != null)
        ..._convertParametersForCollectionFormat("batch", batch),
      if (batches__ != null)
        ..._convertParametersForCollectionFormat("batches[]", batches__,
            collectionFormat: "multi"),
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (categories__ != null)
        ..._convertParametersForCollectionFormat("categories[]", categories__,
            collectionFormat: "multi"),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat("created_by", createdBy),
      if (createdBies__ != null)
        ..._convertParametersForCollectionFormat(
            "created_bies[]", createdBies__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (deep != null) ..._convertParametersForCollectionFormat("deep", deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat("delegated_to", delegatedTo),
      if (delegatedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "delegated_tos[]", delegatedTos__,
            collectionFormat: "multi"),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat("has_documents", hasDocuments),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat("managed_by", managedBy),
      if (managedBies__ != null)
        ..._convertParametersForCollectionFormat(
            "managed_bies[]", managedBies__,
            collectionFormat: "multi"),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            "operation_state_all", operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            "operation_state", operationState),
      if (operationStates__ != null)
        ..._convertParametersForCollectionFormat(
            "operation_states[]", operationStates__,
            collectionFormat: "multi"),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (phase != null)
        ..._convertParametersForCollectionFormat("phase", phase),
      if (phases__ != null)
        ..._convertParametersForCollectionFormat("phases[]", phases__,
            collectionFormat: "multi"),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (places__ != null)
        ..._convertParametersForCollectionFormat("places[]", places__,
            collectionFormat: "multi"),
      if (priority != null)
        ..._convertParametersForCollectionFormat("priority", priority),
      if (priorities__ != null)
        ..._convertParametersForCollectionFormat("priorities[]", priorities__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (rating != null)
        ..._convertParametersForCollectionFormat("rating", rating),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (visibility__ != null)
        ..._convertParametersForCollectionFormat("visibility[]", visibility__),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'ReportPagination')
        as ReportPagination;
  }

  /// Retrieve all Service resources.
  ///
  ///
  Future<ServicePagination> cgetServicesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/services"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'ServicePagination')
        as ServicePagination;
  }

  /// Retrieve all Webhook resources.
  ///
  ///
  Future<WebhookPagination> cgetWebhooksByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/webhooks"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'WebhookPagination')
        as WebhookPagination;
  }

  /// Retrieve all Export resources.
  ///
  ///
  Future<void> cpostExportByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String assignedTo,
    List<String> assignedTos__,
    String batch,
    List<String> batches__,
    String category,
    List<String> categories__,
    String createdBy,
    List<String> createdBies__,
    DateTime after,
    DateTime before,
    String deep,
    String delegatedTo,
    List<String> delegatedTos__,
    String hasDocuments,
    String managedBy,
    List<String> managedBies__,
    String operationStateAll,
    String operationState,
    List<String> operationStates__,
    String order,
    String phase,
    List<String> phases__,
    String place,
    List<String> places__,
    String priority,
    List<String> priorities__,
    String query,
    String rating,
    String state,
    List<String> states__,
    String visibility__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/exports"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (assignedTo != null)
        ..._convertParametersForCollectionFormat("assigned_to", assignedTo),
      if (assignedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "assigned_tos[]", assignedTos__,
            collectionFormat: "multi"),
      if (batch != null)
        ..._convertParametersForCollectionFormat("batch", batch),
      if (batches__ != null)
        ..._convertParametersForCollectionFormat("batches[]", batches__,
            collectionFormat: "multi"),
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (categories__ != null)
        ..._convertParametersForCollectionFormat("categories[]", categories__,
            collectionFormat: "multi"),
      if (createdBy != null)
        ..._convertParametersForCollectionFormat("created_by", createdBy),
      if (createdBies__ != null)
        ..._convertParametersForCollectionFormat(
            "created_bies[]", createdBies__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (deep != null) ..._convertParametersForCollectionFormat("deep", deep),
      if (delegatedTo != null)
        ..._convertParametersForCollectionFormat("delegated_to", delegatedTo),
      if (delegatedTos__ != null)
        ..._convertParametersForCollectionFormat(
            "delegated_tos[]", delegatedTos__,
            collectionFormat: "multi"),
      if (hasDocuments != null)
        ..._convertParametersForCollectionFormat("has_documents", hasDocuments),
      if (managedBy != null)
        ..._convertParametersForCollectionFormat("managed_by", managedBy),
      if (managedBies__ != null)
        ..._convertParametersForCollectionFormat(
            "managed_bies[]", managedBies__,
            collectionFormat: "multi"),
      if (operationStateAll != null)
        ..._convertParametersForCollectionFormat(
            "operation_state_all", operationStateAll),
      if (operationState != null)
        ..._convertParametersForCollectionFormat(
            "operation_state", operationState),
      if (operationStates__ != null)
        ..._convertParametersForCollectionFormat(
            "operation_states[]", operationStates__,
            collectionFormat: "multi"),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (phase != null)
        ..._convertParametersForCollectionFormat("phase", phase),
      if (phases__ != null)
        ..._convertParametersForCollectionFormat("phases[]", phases__,
            collectionFormat: "multi"),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (places__ != null)
        ..._convertParametersForCollectionFormat("places[]", places__,
            collectionFormat: "multi"),
      if (priority != null)
        ..._convertParametersForCollectionFormat("priority", priority),
      if (priorities__ != null)
        ..._convertParametersForCollectionFormat("priorities[]", priorities__,
            collectionFormat: "multi"),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
      if (rating != null)
        ..._convertParametersForCollectionFormat("rating", rating),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (visibility__ != null)
        ..._convertParametersForCollectionFormat("visibility[]", visibility__),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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
      method: 'POST',
      queryParams: queryParams,
      headerParams: headerParams,
      contentType: contentTypes[0],
      authNames: authNames,
    );

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return;
    }

    return;
  }

  /// Retrieve one Analytic resource.
  ///
  ///
  Future<Chart> getAnalyticByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String category,
    List<String> categories__,
    String place,
    List<String> places__,
    String state,
    List<String> states__,
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
    final List<QueryParam> queryParams = <QueryParam>[
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (categories__ != null)
        ..._convertParametersForCollectionFormat("categories[]", categories__,
            collectionFormat: "multi"),
      if (place != null)
        ..._convertParametersForCollectionFormat("place", place),
      if (places__ != null)
        ..._convertParametersForCollectionFormat("places[]", places__,
            collectionFormat: "multi"),
      if (state != null)
        ..._convertParametersForCollectionFormat("state", state),
      if (states__ != null)
        ..._convertParametersForCollectionFormat("states[]", states__,
            collectionFormat: "multi"),
      if (options_property_ != null)
        ..._convertParametersForCollectionFormat(
            "options[property]", options_property_),
      if (options_sort_ != null)
        ..._convertParametersForCollectionFormat(
            "options[sort]", options_sort_),
    ];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'Chart') as Chart;
  }

  /// Retrieve one Configuration resource.
  ///
  ///
  Future<Configuration> getConfigurationByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/configuration"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'Configuration')
        as Configuration;
  }

  /// Retrieve one Form resource.
  ///
  ///
  Future<Schema> getFormByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/form"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

  /// Retrieve one Organization resource.
  ///
  ///
  Future<Organization> getOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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

    return apiClient.deserialize(response.body, 'Organization') as Organization;
  }

  /// Edit one Organization resource.
  ///
  ///
  Future<Organization> patchOrganization(
    String xKeyclicApp,
    OrganizationPatch organizationPatch,
    String organization, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organizationPatch == null) {
      throw ApiException(0, "Missing required param: organizationPatch");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[];

    // header params
    final Map<String, String> headerParams = <String, String>{
      if (acceptLanguage is String)
        "accept-language": acceptLanguage.toString(),
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
      if (xKeyclicApp is String) "x-keyclic-app": xKeyclicApp.toString(),
      if (xKeyclicAppPlatform is String)
        "x-keyclic-app-platform": xKeyclicAppPlatform.toString(),
      if (xKeyclicAppVersion is String)
        "x-keyclic-app-version": xKeyclicAppVersion.toString(),
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
      method: 'PATCH',
      queryParams: queryParams,
      body: organizationPatch,
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

    return apiClient.deserialize(response.body, 'Organization') as Organization;
  }
}
