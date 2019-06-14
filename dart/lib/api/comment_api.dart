part of keyclic_sdk_api.api;

class CommentApi {
  final ApiClient apiClient;

  CommentApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Comment resources.
  ///
  ///
  Future<ActivityPagination> cgetCommentsByFeedback(
      String xKeyclicApp, String feedback,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      int page,
      int limit,
      String order,
      DateTime after,
      DateTime before}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/comments"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
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
      return apiClient.deserialize(response.body, 'ActivityPagination')
          as ActivityPagination;
    } else {
      return null;
    }
  }

  /// Retrieve all Comment resources.
  ///
  ///
  Future<ActivityPagination> cgetCommentsByOperation(
      String xKeyclicApp, String operation,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      int page,
      int limit,
      String order,
      DateTime after,
      DateTime before}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/comments"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
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
      return apiClient.deserialize(response.body, 'ActivityPagination')
          as ActivityPagination;
    } else {
      return null;
    }
  }

  /// Create one Comment resource.
  ///
  ///
  Future<Feedback> postCommentByFeedback(
      String xKeyclicApp, CommentData commentData, String feedback,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = commentData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (commentData == null) {
      throw ApiException(400, "Missing required param: commentData");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/comments"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

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
      return apiClient.deserialize(response.body, 'Feedback') as Feedback;
    } else {
      return null;
    }
  }

  /// Create one Comment resource.
  ///
  ///
  Future<Operation> postCommentByOperation(
      String xKeyclicApp, CommentData commentData, String operation,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = commentData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (commentData == null) {
      throw ApiException(400, "Missing required param: commentData");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/comments"
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