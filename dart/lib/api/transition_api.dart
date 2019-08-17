part of keyclic_sdk_api.api;

class TransitionApi {
  TransitionApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create one Transition resource.
  ///
  ///
  Future<Delegation> postTransitionByDelegation(
    String xKeyclicApp,
    ReportWorkflowTransitionData reportWorkflowTransitionData,
    String delegation, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (reportWorkflowTransitionData == null) {
      throw ApiException(
          0, "Missing required param: reportWorkflowTransitionData");
    }

    if (delegation == null) {
      throw ApiException(0, "Missing required param: delegation");
    }

    // create path and map variables
    String path = "/delegations/{delegation}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "delegation" + "}", delegation.toString());

    // query params
    List<QueryParam> queryParams = [];

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    Object postBody = reportWorkflowTransitionData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Delegation') as Delegation;
  }

  /// Create one Transition resource.
  ///
  ///
  Future<Feedback> postTransitionByFeedback(
    String xKeyclicApp,
    FeedbackWorkflowTransitionData feedbackWorkflowTransitionData,
    String feedback, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feedbackWorkflowTransitionData == null) {
      throw ApiException(
          0, "Missing required param: feedbackWorkflowTransitionData");
    }

    if (feedback == null) {
      throw ApiException(0, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

    // query params
    List<QueryParam> queryParams = [];

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    Object postBody = feedbackWorkflowTransitionData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Feedback') as Feedback;
  }

  /// Create one Transition resource.
  ///
  ///
  Future<Operation> postTransitionByOperation(
    String xKeyclicApp,
    OperationWorkflowTransitionData operationWorkflowTransitionData,
    String operation, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (operationWorkflowTransitionData == null) {
      throw ApiException(
          0, "Missing required param: operationWorkflowTransitionData");
    }

    if (operation == null) {
      throw ApiException(0, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

    // query params
    List<QueryParam> queryParams = [];

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    Object postBody = operationWorkflowTransitionData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Operation') as Operation;
  }

  /// Create one Transition resource.
  ///
  ///
  Future<Report> postTransitionByReport(
    String xKeyclicApp,
    ReportWorkflowTransitionData reportWorkflowTransitionData,
    String report, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (reportWorkflowTransitionData == null) {
      throw ApiException(
          0, "Missing required param: reportWorkflowTransitionData");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}/workflow/transition"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "report" + "}", report.toString());

    // query params
    List<QueryParam> queryParams = [];

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    Object postBody = reportWorkflowTransitionData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Report') as Report;
  }
}
