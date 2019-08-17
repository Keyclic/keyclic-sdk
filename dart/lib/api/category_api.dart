part of keyclic_sdk_api.api;

class CategoryApi {
  final ApiClient apiClient;

  CategoryApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Category resources.
  ///
  ///
  Future<CategoryPagination> cgetCategories(String xKeyclicApp,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String businessActivity,
      DateTime after,
      DateTime before,
      String geoPoint,
      String geoCoordinates,
      String order,
      String organization,
      String query,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }

    // create path and map variables
    String path = "/categories".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'CategoryPagination')
          as CategoryPagination;
    } else {
      return null;
    }
  }

  /// Retrieve all Category resources.
  ///
  ///
  Future<CategoryPagination> cgetCategoriesByOrganization(
      String xKeyclicApp, String organization,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String businessActivity,
      DateTime after,
      DateTime before,
      String geoPoint,
      String geoCoordinates,
      String order,
      String query,
      int page,
      int limit}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/categories"
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
      return apiClient.deserialize(response.body, 'CategoryPagination')
          as CategoryPagination;
    } else {
      return null;
    }
  }

  /// Remove one Category resource.
  ///
  ///
  Future deleteCategory(String xKeyclicApp, String category,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (category == null) {
      throw ApiException(400, "Missing required param: category");
    }

    // create path and map variables
    String path = "/categories/{category}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "category" + "}", category.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Retrieve one Category resource.
  ///
  ///
  Future<Category> getCategory(String xKeyclicApp, String category,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (category == null) {
      throw ApiException(400, "Missing required param: category");
    }

    // create path and map variables
    String path = "/categories/{category}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "category" + "}", category.toString());

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
      return apiClient.deserialize(response.body, 'Category') as Category;
    } else {
      return null;
    }
  }

  /// Edit one Category resource.
  ///
  ///
  Future<Category> patchCategory(
      String xKeyclicApp, CategoryPatch categoryPatch, String category,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = categoryPatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (categoryPatch == null) {
      throw ApiException(400, "Missing required param: categoryPatch");
    }
    if (category == null) {
      throw ApiException(400, "Missing required param: category");
    }

    // create path and map variables
    String path = "/categories/{category}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "category" + "}", category.toString());

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
      return apiClient.deserialize(response.body, 'Category') as Category;
    } else {
      return null;
    }
  }

  /// Create one Category resource.
  ///
  ///
  Future<Category> postCategoryByOrganization(
      String xKeyclicApp, CategoryData categoryData, String organization,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = categoryData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (categoryData == null) {
      throw ApiException(400, "Missing required param: categoryData");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/categories"
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
      return apiClient.deserialize(response.body, 'Category') as Category;
    } else {
      return null;
    }
  }
}
