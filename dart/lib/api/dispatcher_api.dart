// @dart=2.10
part of keyclic_sdk_api.api;

class DispatcherApi {
  DispatcherApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Rule resources.
  ///
  ///
  Future<RulePagination> cgetRulesByDispatcher(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
    String category,
    List<String> categories__,
    DateTime after,
    DateTime before,
    String order,
    String service,
    List<String> services__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (dispatcher == null) {
      throw ApiException(0, "Missing required param: dispatcher");
    }

    // create path and map variables
    final String path = "/dispatchers/{dispatcher}/rules"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "dispatcher" + "}", dispatcher.toString());

    // query params
    final List<QueryParam> queryParams = <QueryParam>[
      if (category != null)
        ..._convertParametersForCollectionFormat("category", category),
      if (categories__ != null)
        ..._convertParametersForCollectionFormat("categories[]", categories__,
            collectionFormat: "multi"),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (service != null)
        ..._convertParametersForCollectionFormat("service", service),
      if (services__ != null)
        ..._convertParametersForCollectionFormat("services[]", services__,
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

    return apiClient.deserialize(response.body, 'RulePagination')
        as RulePagination;
  }

  /// Retrieve one Dispatcher resource.
  ///
  ///
  Future<Dispatcher> getDispatcher(
    String xKeyclicApp,
    String dispatcher, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppPlatform,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (dispatcher == null) {
      throw ApiException(0, "Missing required param: dispatcher");
    }

    // create path and map variables
    final String path = "/dispatchers/{dispatcher}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "dispatcher" + "}", dispatcher.toString());

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

    return apiClient.deserialize(response.body, 'Dispatcher') as Dispatcher;
  }
}
