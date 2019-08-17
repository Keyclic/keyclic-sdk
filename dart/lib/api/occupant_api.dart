part of keyclic_sdk_api.api;

class OccupantApi {
  OccupantApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve all Occupant resources.
  ///
  ///
  Future<OccupantPagination> cgetOccupants(
    String xKeyclicApp, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String person,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    final String path = "/occupants".replaceAll("{format}", "json");

    // query params
    final List<QueryParam> queryParams = [
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (person != null)
        ..._convertParametersForCollectionFormat("person", person),
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

    return apiClient.deserialize(response.body, 'OccupantPagination')
        as OccupantPagination;
  }

  /// Retrieve all Occupant resources.
  ///
  ///
  Future<OccupantPagination> cgetOccupantsByPlace(
    String xKeyclicApp,
    String place, {
    String acceptLanguage,
    String xKeyclicAppVersion,
    DateTime after,
    DateTime before,
    String order,
    String person,
    int page,
    int limit,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (place == null) {
      throw ApiException(0, "Missing required param: place");
    }

    // create path and map variables
    final String path = "/places/{place}/occupants"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString());

    // query params
    final List<QueryParam> queryParams = [
      if (after != null)
        ..._convertParametersForCollectionFormat("after", after),
      if (before != null)
        ..._convertParametersForCollectionFormat("before", before),
      if (order != null)
        ..._convertParametersForCollectionFormat("order", order),
      if (person != null)
        ..._convertParametersForCollectionFormat("person", person),
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

    return apiClient.deserialize(response.body, 'OccupantPagination')
        as OccupantPagination;
  }

  /// Remove one Occupant resource.
  ///
  ///
  Future<Organization> deleteOccupantByPlaceAndOccupant(
    String xKeyclicApp,
    String place,
    String occupant, {
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

    if (occupant == null) {
      throw ApiException(0, "Missing required param: occupant");
    }

    // create path and map variables
    final String path = "/places/{place}/occupants/{occupant}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "place" + "}", place.toString())
        .replaceAll("{" + "occupant" + "}", occupant.toString());

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
      'DELETE',
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

    return apiClient.deserialize(response.body, 'Organization') as Organization;
  }

  /// Retrieve one Occupant resource.
  ///
  ///
  Future<Occupant> getOccupant(
    String xKeyclicApp,
    String occupant, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (occupant == null) {
      throw ApiException(0, "Missing required param: occupant");
    }

    // create path and map variables
    final String path = "/occupants/{occupant}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "occupant" + "}", occupant.toString());

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

    return apiClient.deserialize(response.body, 'Occupant') as Occupant;
  }

  /// Create one Occupant resource.
  ///
  ///
  Future<Occupant> postOccupantByPlace(
    String xKeyclicApp,
    PersonData personData,
    String place, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (personData == null) {
      throw ApiException(0, "Missing required param: personData");
    }

    if (place == null) {
      throw ApiException(0, "Missing required param: place");
    }

    // create path and map variables
    final String path = "/places/{place}/occupants"
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

    final PersonData postBody = personData;

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

    return apiClient.deserialize(response.body, 'Occupant') as Occupant;
  }
}
