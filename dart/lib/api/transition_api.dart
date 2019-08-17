part of keyclic_sdk_api.api;

class TransitionApi {
  final ApiClient apiClient;

  TransitionApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Create one Transition resource.
  ///
  ///
  Future<Delegation> postTransitionByDelegation(
      String xKeyclicApp,
      ReportWorkflowTransitionData reportWorkflowTransitionData,
      String delegation,
      {String acceptLanguage,
      String xKeyclicAppVersion}) async {
    Object postBody = reportWorkflowTransitionData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (reportWorkflowTransitionData == null) {
      throw ApiException(
          400, "Missing required param: reportWorkflowTransitionData");
    }
    if (delegation == null) {
      throw ApiException(400, "Missing required param: delegation");
    }

    // create path and map variables
    String path = "/delegations/{delegation}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "delegation" + "}", delegation.toString());

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
      return apiClient.deserialize(response.body, 'Delegation') as Delegation;
    } else {
      return null;
    }
  }

  /// Create one Transition resource.
  ///
  ///
  Future<Feedback> postTransitionByFeedback(
      String xKeyclicApp,
      FeedbackWorkflowTransitionData feedbackWorkflowTransitionData,
      String feedback,
      {String acceptLanguage,
      String xKeyclicAppVersion}) async {
    Object postBody = feedbackWorkflowTransitionData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (feedbackWorkflowTransitionData == null) {
      throw ApiException(
          400, "Missing required param: feedbackWorkflowTransitionData");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/workflow/transition"
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

  /// Create one Transition resource.
  ///
  ///
  Future<Operation> postTransitionByOperation(
      String xKeyclicApp,
      OperationWorkflowTransitionData operationWorkflowTransitionData,
      String operation,
      {String acceptLanguage,
      String xKeyclicAppVersion}) async {
    Object postBody = operationWorkflowTransitionData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operationWorkflowTransitionData == null) {
      throw ApiException(
          400, "Missing required param: operationWorkflowTransitionData");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/workflow/transition"
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

  /// Create one Transition resource.
  ///
  ///
  Future<Report> postTransitionByReport(String xKeyclicApp,
      ReportWorkflowTransitionData reportWorkflowTransitionData, String report,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = reportWorkflowTransitionData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (reportWorkflowTransitionData == null) {
      throw ApiException(
          400, "Missing required param: reportWorkflowTransitionData");
    }
    if (report == null) {
      throw ApiException(400, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

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
      return apiClient.deserialize(response.body, 'Report') as Report;
    } else {
      return null;
    }
  }
}
