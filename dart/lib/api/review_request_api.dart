part of keyclic_sdk_api.api;

class ReviewRequestApi {
  ReviewRequestApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve one ReviewRequest resource.
  ///
  ///
  Future<ReviewRequest> getReviewRequest(
    String xKeyclicApp,
    String reviewRequest, {
    String acceptLanguage,
    DateTime xDateTime,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (reviewRequest == null) {
      throw ApiException(0, "Missing required param: reviewRequest");
    }

    // create path and map variables
    final String path = "/review-requests/{reviewRequest}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "reviewRequest" + "}", reviewRequest.toString());

    // query params
    final List<QueryParam> queryParams = [];

    // header params
    final Map<String, String> headerParams = {
      "accept-language": acceptLanguage,
      if (xDateTime is DateTime) "x-date-time": xDateTime.toIso8601String(),
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

    return apiClient.deserialize(response.body, 'ReviewRequest')
        as ReviewRequest;
  }
}
