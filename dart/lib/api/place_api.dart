part of keyclic_sdk_api.api;

class PlaceApi {
  PlaceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Place resources.
  ///
  ///
  Future<PlacePagination> cgetPlaces(
    String xKeyclicApp, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    String businessActivity,
    DateTime after,
    DateTime before,
    String geoElevation,
    String geoHash__,
    String geoPoint,
    String geoCoordinates,
    String order,
    String organization,
    String parent,
    String parents__,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    final String path = "/places".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            "business_activity", businessActivity),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (geoElevation != null)
        ..._convertParametersForCollectionFormat("geo_elevation", geoElevation),
      if (geoHash__ != null)
        ..._convertParametersForCollectionFormat("geo_hash[]", geoHash__),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (organization != null)
        ..._convertParametersForCollectionFormat("organization", organization),
      if (parent != null)
        ..._convertParametersForCollectionFormat("parent", parent),
      if (parents__ != null)
        ..._convertParametersForCollectionFormat("parents[]", parents__),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
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

    return apiClient.deserialize(response.body, 'PlacePagination')
        as PlacePagination;
  }

  /// Retrieve all Place resources.
  ///
  ///
  Future<PlacePagination> cgetPlacesByOrganization(
    String xKeyclicApp,
    String organization, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    String businessActivity,
    DateTime after,
    DateTime before,
    String geoElevation,
    String geoHash__,
    String geoPoint,
    String geoCoordinates,
    String order,
    String parent,
    String parents__,
    String query,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/places"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (businessActivity != null)
        ..._convertParametersForCollectionFormat(
            "business_activity", businessActivity),
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (geoElevation != null)
        ..._convertParametersForCollectionFormat("geo_elevation", geoElevation),
      if (geoHash__ != null)
        ..._convertParametersForCollectionFormat("geo_hash[]", geoHash__),
      if (geoPoint != null)
        ..._convertParametersForCollectionFormat("geo_point", geoPoint),
      if (geoCoordinates != null)
        ..._convertParametersForCollectionFormat(
            "geo_coordinates", geoCoordinates),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (parent != null)
        ..._convertParametersForCollectionFormat("parent", parent),
      if (parents__ != null)
        ..._convertParametersForCollectionFormat("parents[]", parents__),
      if (query != null)
        ..._convertParametersForCollectionFormat("query", query),
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

    return apiClient.deserialize(response.body, 'PlacePagination')
        as PlacePagination;
  }

  /// Retrieve one Place resource.
  ///
  ///
  Future<Place> getPlace(
    String xKeyclicApp,
    String place, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (place == null) {
      throw ApiException(0, "Missing required param: place");
    }

    // create path and map variables
    final String path = "/places/{place}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString());

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

    return apiClient.deserialize(response.body, 'Place') as Place;
  }

  /// Edit one Place resource.
  ///
  ///
  Future<Place> patchPlace(
    String xKeyclicApp,
    PlacePatch placePatch,
    String place, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (placePatch == null) {
      throw ApiException(0, "Missing required param: placePatch");
    }

    if (place == null) {
      throw ApiException(0, "Missing required param: place");
    }

    // create path and map variables
    final String path = "/places/{place}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString());

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

    final PlacePatch postBody = placePatch;

    final Response response = await apiClient.invokeAPI(
      path,
      'PATCH',
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

    return apiClient.deserialize(response.body, 'Place') as Place;
  }

  /// Create one Place resource.
  ///
  ///
  Future<Place> postPlaceByOrganization(
    String xKeyclicApp,
    PlaceData placeData,
    String organization, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (placeData == null) {
      throw ApiException(0, "Missing required param: placeData");
    }

    if (organization == null) {
      throw ApiException(0, "Missing required param: organization");
    }

    // create path and map variables
    final String path = "/organizations/{organization}/places"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "organization" + "}", organization.toString());

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

    final PlaceData postBody = placeData;

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

    return apiClient.deserialize(response.body, 'Place') as Place;
  }
}
