part of keyclic_sdk_api.api;

class PlaceApi {
  final ApiClient apiClient;

  PlaceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Place resources.
  ///
  ///
  Future<PlacePagination> cgetPlaces(String xKeyclicApp,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String businessActivity,
      DateTime after,
      DateTime before,
      String geoElevation,
      String geoHash_,
      String geoPoint,
      String geoCoordinates,
      String order,
      String organization,
      String parent,
      String parents_,
      String query,
      int page,
      int limit,
      String search_branchCode_,
      String search_description_,
      String search_name_}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    String path = "/places".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (businessActivity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "business_activity", businessActivity));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (geoElevation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "geo_elevation", geoElevation));
    }
    if (geoHash_ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_hash[]", geoHash_));
    }
    if (geoPoint != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_point", geoPoint));
    }
    if (geoCoordinates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "geo_coordinates", geoCoordinates));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (organization != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "organization", organization));
    }
    if (parent != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "parent", parent));
    }
    if (parents_ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "parents[]", parents_));
    }
    if (query != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (search_branchCode_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[branchCode]", search_branchCode_));
    }
    if (search_description_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[description]", search_description_));
    }
    if (search_name_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[name]", search_name_));
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
      return apiClient.deserialize(response.body, 'PlacePagination')
          as PlacePagination;
    } else {
      return null;
    }
  }

  /// Retrieve all Place resources.
  ///
  ///
  Future<PlacePagination> cgetPlacesByOrganization(
      String xKeyclicApp, String organization,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String businessActivity,
      DateTime after,
      DateTime before,
      String geoElevation,
      String geoHash_,
      String geoPoint,
      String geoCoordinates,
      String order,
      String parent,
      String parents_,
      String query,
      int page,
      int limit,
      String search_branchCode_,
      String search_description_,
      String search_name_}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/places"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (businessActivity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "business_activity", businessActivity));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (geoElevation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "geo_elevation", geoElevation));
    }
    if (geoHash_ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_hash[]", geoHash_));
    }
    if (geoPoint != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "geo_point", geoPoint));
    }
    if (geoCoordinates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "geo_coordinates", geoCoordinates));
    }
    if (order != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (parent != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "parent", parent));
    }
    if (parents_ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "parents[]", parents_));
    }
    if (query != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (search_branchCode_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[branchCode]", search_branchCode_));
    }
    if (search_description_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[description]", search_description_));
    }
    if (search_name_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search[name]", search_name_));
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
      return apiClient.deserialize(response.body, 'PlacePagination')
          as PlacePagination;
    } else {
      return null;
    }
  }

  /// Retrieve one Place resource.
  ///
  ///
  Future<Place> getPlace(String xKeyclicApp, String place,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (place == null) {
      throw ApiException(400, "Missing required param: place");
    }

    // create path and map variables
    String path = "/places/{place}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString());

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
      return apiClient.deserialize(response.body, 'Place') as Place;
    } else {
      return null;
    }
  }

  /// Edit one Place resource.
  ///
  ///
  Future<Place> patchPlace(
      String xKeyclicApp, PlacePatch placePatch, String place,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = placePatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (placePatch == null) {
      throw ApiException(400, "Missing required param: placePatch");
    }
    if (place == null) {
      throw ApiException(400, "Missing required param: place");
    }

    // create path and map variables
    String path = "/places/{place}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString());

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
      return apiClient.deserialize(response.body, 'Place') as Place;
    } else {
      return null;
    }
  }

  /// Create one Place resource.
  ///
  ///
  Future<Place> postPlaceByOrganization(
      String xKeyclicApp, PlaceData placeData, String organization,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = placeData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (placeData == null) {
      throw ApiException(400, "Missing required param: placeData");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/places"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

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
      return apiClient.deserialize(response.body, 'Place') as Place;
    } else {
      return null;
    }
  }
}
