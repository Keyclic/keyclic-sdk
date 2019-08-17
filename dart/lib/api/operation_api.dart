part of keyclic_sdk_api.api;

class OperationApi {
  final ApiClient apiClient;

  OperationApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByOrganization(
      String xKeyclicApp, String organization,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      DateTime after,
      DateTime before,
      String order,
      String query,
      String state,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (query != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
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
      return apiClient.deserialize(response.body, 'OperationPagination')
          as OperationPagination;
    } else {
      return null;
    }
  }

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByPerson(
      String xKeyclicApp, String person,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      DateTime after,
      DateTime before,
      String order,
      String organization,
      String query,
      String state,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (person == null) {
      throw ApiException(400, "Missing required param: person");
    }

    // create path and map variables
    String path = "/people/{person}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
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
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
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
      return apiClient.deserialize(response.body, 'OperationPagination')
          as OperationPagination;
    } else {
      return null;
    }
  }

  /// Retrieve all Operation resources.
  ///
  ///
  Future<OperationPagination> cgetOperationsByReport(
      String xKeyclicApp, String report,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      DateTime after,
      DateTime before,
      String order,
      String organization,
      String query,
      String state,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (report == null) {
      throw ApiException(400, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}/operations"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
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
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
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
      return apiClient.deserialize(response.body, 'OperationPagination')
          as OperationPagination;
    } else {
      return null;
    }
  }

  /// Remove one Operation resource.
  ///
  ///
  Future deleteOperation(String xKeyclicApp, String operation,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

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
      return;
    } else {
      return;
    }
  }

  /// Retrieve one Operation resource.
  ///
  ///
  Future<Operation> getOperation(String xKeyclicApp, String operation,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

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
      return apiClient.deserialize(response.body, 'Operation') as Operation;
    } else {
      return null;
    }
  }

  /// Edit one Operation resource.
  ///
  ///
  Future<Operation> patchOperation(
      String xKeyclicApp, OperationPatch operationPatch, String operation,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = operationPatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operationPatch == null) {
      throw ApiException(400, "Missing required param: operationPatch");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

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
      return apiClient.deserialize(response.body, 'Operation') as Operation;
    } else {
      return null;
    }
  }

  /// Create one Operation resource.
  ///
  ///
  Future<Operation> postOperation(
      String xKeyclicApp, OperationData operationData,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = operationData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operationData == null) {
      throw ApiException(400, "Missing required param: operationData");
    }

    // create path and map variables
    String path = "/operations".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'Operation') as Operation;
    } else {
      return null;
    }
  }
}
