part of keyclic_sdk_api.api;

class ReviewApi {
  ReviewApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Review resources.
  ///
  ///
  Future<ReviewPagination> cgetReviewsByFeedback(
    String xKeyclicApp,
    String feedback, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feedback == null) {
      throw ApiException(0, "Missing required param: feedback");
    }

    // create path and map variables
    final String path = "/feedbacks/{feedback}/reviews"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (page != null) ..._convertParametersForCollectionFormat("page", page),
      if (limit != null)
        ..._convertParametersForCollectionFormat("limit", limit),
    ];

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

    return apiClient.deserialize(response.body, 'ReviewPagination')
        as ReviewPagination;
  }

  /// Retrieve one Review resource.
  ///
  ///
  Future<Review> getReview(
    String xKeyclicApp,
    String review, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (review == null) {
      throw ApiException(0, "Missing required param: review");
    }

    // create path and map variables
    final String path = "/reviews/{review}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "review" + "}", review.toString());

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

    return apiClient.deserialize(response.body, 'Review') as Review;
  }

  /// Create one Review resource.
  ///
  ///
  Future<Review> postReviewByReviewRequest(
    String xKeyclicApp,
    ReviewData reviewData,
    String reviewRequest, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (reviewData == null) {
      throw ApiException(0, "Missing required param: reviewData");
    }

    if (reviewRequest == null) {
      throw ApiException(0, "Missing required param: reviewRequest");
    }

    // create path and map variables
    final String path = "/review-requests/{reviewRequest}/reviews"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "reviewRequest" + "}", reviewRequest.toString());

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

    final ReviewData postBody = reviewData;

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

    return apiClient.deserialize(response.body, 'Review') as Review;
  }
}
