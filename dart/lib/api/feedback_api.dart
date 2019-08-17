part of keyclic_sdk_api.api;

class FeedbackApi {
  FeedbackApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Feedback resources.
  ///
  ///
  Future<FeedbackPagination> cgetFeedback(
    String xKeyclicApp, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    String state,
    String category,
    DateTime after,
    DateTime before,
    String geoHash__,
    String geoNear,
    String order,
    String organization,
    String visibility__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    String path = "/feedbacks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if (category != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "category", category));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (geoHash__ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_hash[]", geoHash__));
    }
    if (geoNear != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_near", geoNear));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (organization != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "organization", organization));
    }
    if (visibility__ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "visibility[]", visibility__));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = [];

    Object postBody;

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'FeedbackPagination')
        as FeedbackPagination;
  }

  /// Retrieve all Feedback resources.
  ///
  ///
  Future<FeedbackPagination> cgetFeedbackByPerson(
    String xKeyclicApp,
    String person, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    String category,
    DateTime after,
    DateTime before,
    String geoHash__,
    String geoNear,
    String order,
    String organization,
    String state,
    String visibility__,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    String path = "/people/{person}/feedbacks"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

    // query params
    List<QueryParam> queryParams = [];
    if (category != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "category", category));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (geoHash__ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_hash[]", geoHash__));
    }
    if (geoNear != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_near", geoNear));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (organization != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "organization", organization));
    }
    if (state != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if (visibility__ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "visibility[]", visibility__));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    // header params
    Map<String, String> headerParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType =
        contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    Object postBody;

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'FeedbackPagination')
        as FeedbackPagination;
  }

  /// Retrieve one Feedback resource.
  ///
  ///
  Future<Feedback> getFeedback(
    String xKeyclicApp,
    String feedback, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (feedback == null) {
      throw ApiException(0, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}"
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

    Object postBody;

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Feedback') as Feedback;
  }
}
