part of keyclic_sdk_api.api;

class PublicationApi {
  PublicationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Publication resource.
  ///
  ///
  Future<void> deletePublication(
    String xKeyclicApp,
    String publication, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (publication == null) {
      throw ApiException(0, "Missing required param: publication");
    }

    // create path and map variables
    final String path = "/publications/{publication}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "publication" + "}", publication.toString());

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
      method: 'DELETE',
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

    return;
  }

  /// Retrieve one Publication resource.
  ///
  ///
  Future<Publication> getPublication(
    String xKeyclicApp,
    String publication, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (publication == null) {
      throw ApiException(0, "Missing required param: publication");
    }

    // create path and map variables
    final String path = "/publications/{publication}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "publication" + "}", publication.toString());

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

    return apiClient.deserialize(response.body, 'Publication') as Publication;
  }

  /// Create one Publication resource.
  ///
  ///
  Future<Publication> postPublication(
    String xKeyclicApp,
    PublicationData publicationData, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (publicationData == null) {
      throw ApiException(0, "Missing required param: publicationData");
    }

    // create path and map variables
    final String path = "/publications".replaceAll("{format}", "json");

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
      method: 'POST',
      queryParams: queryParams,
      body: publicationData,
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

    return apiClient.deserialize(response.body, 'Publication') as Publication;
  }
}
