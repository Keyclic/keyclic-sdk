part of keyclic_sdk_api.api;

class StateApi {
  StateApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Edit one State resource.
  ///
  ///
  Future<Feedback> patchStateByFeedback(
    String xKeyclicApp,
    String feedback, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    FeedbackStatePatch feedbackStatePatch,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feedback == null) {
      throw ApiException(0, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/state"
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

    Object postBody = feedbackStatePatch;

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Feedback') as Feedback;
  }

  /// Edit one State resource.
  ///
  ///
  Future<Operation> patchStateByOperation(
    String xKeyclicApp,
    String operation, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    OperationStatePatch operationStatePatch,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (operation == null) {
      throw ApiException(0, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/state"
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

    Object postBody = operationStatePatch;

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Operation') as Operation;
  }

  /// Edit one State resource.
  ///
  ///
  Future<Report> patchStateByReport(
    String xKeyclicApp,
    String report, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    ReportStatePatch reportStatePatch,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (report == null) {
      throw ApiException(0, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}/state"
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

    Object postBody = reportStatePatch;

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams,
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
