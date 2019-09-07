part of keyclic_sdk_api.api;

class ExternalServiceApi {
  ExternalServiceApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one ExternalService resource.
  ///
  ///
  Future<void> deleteExternalService(
    String xKeyclicApp,
    String externalService, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (externalService == null) {
      throw ApiException(0, "Missing required param: externalService");
    }

    // create path and map variables
    final String path = "/external-services/{externalService}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "externalService" + "}", externalService.toString());

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
      'DELETE',
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
      return;
    }

    return;
  }

  /// Retrieve one ExternalService resource.
  ///
  ///
  Future<ExternalService> getExternalService(
    String xKeyclicApp,
    String externalService, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (externalService == null) {
      throw ApiException(0, "Missing required param: externalService");
    }

    // create path and map variables
    final String path = "/external-services/{externalService}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "externalService" + "}", externalService.toString());

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

    return apiClient.deserialize(response.body, 'ExternalService')
        as ExternalService;
  }

  /// Edit one ExternalService resource.
  ///
  ///
  Future<ExternalService> patchExternalService(
    String xKeyclicApp,
    ExternalServicePatch externalServicePatch,
    String externalService, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (externalServicePatch == null) {
      throw ApiException(0, "Missing required param: externalServicePatch");
    }

    if (externalService == null) {
      throw ApiException(0, "Missing required param: externalService");
    }

    // create path and map variables
    final String path = "/external-services/{externalService}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "externalService" + "}", externalService.toString());

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

    final ExternalServicePatch postBody = externalServicePatch;

    final Response response = await apiClient.invokeAPI(
      path,
      'PATCH',
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

    return apiClient.deserialize(response.body, 'ExternalService')
        as ExternalService;
  }

  /// Create one ExternalService resource.
  ///
  ///
  Future<ExternalService> postExternalService(
    String xKeyclicApp,
    ExternalServiceData externalServiceData, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (externalServiceData == null) {
      throw ApiException(0, "Missing required param: externalServiceData");
    }

    // create path and map variables
    final String path = "/external-services".replaceAll("{format}", "json");

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

    final ExternalServiceData postBody = externalServiceData;

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

    return apiClient.deserialize(response.body, 'ExternalService')
        as ExternalService;
  }
}
