part of keyclic_sdk_api.api;

class StateApi {
  final ApiClient apiClient;

  StateApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Edit one State resource.
  ///
  ///
  Future<Feedback> patchStateByFeedback(String xKeyclicApp, String feedback, {String acceptLanguage, String xKeyclicAppVersion, FeedbackStatePatch feedbackStatePatch}) async {
    Object postBody = feedbackStatePatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/state".replaceAll("{format}", "json").replaceAll("{" + "feedback" + "}", feedback.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Feedback') as Feedback;
    } else {
      return null;
    }
  }

  /// Edit one State resource.
  ///
  ///
  Future<Operation> patchStateByOperation(String xKeyclicApp, String operation, {String acceptLanguage, String xKeyclicAppVersion, OperationStatePatch operationStatePatch}) async {
    Object postBody = operationStatePatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/state".replaceAll("{format}", "json").replaceAll("{" + "operation" + "}", operation.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Operation') as Operation;
    } else {
      return null;
    }
  }

  /// Edit one State resource.
  ///
  ///
  Future<Report> patchStateByReport(String xKeyclicApp, String report, {String acceptLanguage, String xKeyclicAppVersion, ReportStatePatch reportStatePatch}) async {
    Object postBody = reportStatePatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (report == null) {
      throw ApiException(400, "Missing required param: report");
    }

    // create path and map variables
    String path = "/reports/{report}/state".replaceAll("{format}", "json").replaceAll("{" + "report" + "}", report.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Report') as Report;
    } else {
      return null;
    }
  }
}
