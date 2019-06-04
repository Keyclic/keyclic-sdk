part of keyclic_sdk_api.api;

class ImageApi {
  final ApiClient apiClient;

  ImageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Remove one Image resource.
  ///
  ///
  Future deleteImageByOperationAndImage(
      String xKeyclicApp, String operation, String image,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }
    if (image == null) {
      throw ApiException(400, "Missing required param: image");
    }

    // create path and map variables
    String path = "/operations/{operation}/images/{image}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString())
        .replaceAll("{" + "image" + "}", image.toString());

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

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByBusinessActivityAndWidthAndHeight(
      String xKeyclicApp, String businessActivity, String width, String height,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (businessActivity == null) {
      throw ApiException(400, "Missing required param: businessActivity");
    }
    if (width == null) {
      throw ApiException(400, "Missing required param: width");
    }
    if (height == null) {
      throw ApiException(400, "Missing required param: height");
    }

    // create path and map variables
    String path =
        "/businessactivities/{businessActivity}/image/{width}/{height}"
            .replaceAll("{format}", "json")
            .replaceAll(
                "{" + "businessActivity" + "}", businessActivity.toString())
            .replaceAll("{" + "width" + "}", width.toString())
            .replaceAll("{" + "height" + "}", height.toString());

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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByFeedbackAndImageAndWidthAndHeight(
      String xKeyclicApp,
      String feedback,
      String image,
      String width,
      String height,
      {String acceptLanguage,
      String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }
    if (image == null) {
      throw ApiException(400, "Missing required param: image");
    }
    if (width == null) {
      throw ApiException(400, "Missing required param: width");
    }
    if (height == null) {
      throw ApiException(400, "Missing required param: height");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/images/{image}/{width}/{height}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString())
        .replaceAll("{" + "image" + "}", image.toString())
        .replaceAll("{" + "width" + "}", width.toString())
        .replaceAll("{" + "height" + "}", height.toString());

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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByOperationAndImageAndWidthAndHeight(
      String xKeyclicApp,
      String operation,
      String image,
      String width,
      String height,
      {String acceptLanguage,
      String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }
    if (image == null) {
      throw ApiException(400, "Missing required param: image");
    }
    if (width == null) {
      throw ApiException(400, "Missing required param: width");
    }
    if (height == null) {
      throw ApiException(400, "Missing required param: height");
    }

    // create path and map variables
    String path = "/operations/{operation}/images/{image}/{width}/{height}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString())
        .replaceAll("{" + "image" + "}", image.toString())
        .replaceAll("{" + "width" + "}", width.toString())
        .replaceAll("{" + "height" + "}", height.toString());

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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByPersonAndWidthAndHeight(
      String xKeyclicApp, String person, String width, String height,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (person == null) {
      throw ApiException(400, "Missing required param: person");
    }
    if (width == null) {
      throw ApiException(400, "Missing required param: width");
    }
    if (height == null) {
      throw ApiException(400, "Missing required param: height");
    }

    // create path and map variables
    String path = "/people/{person}/image/{width}/{height}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString())
        .replaceAll("{" + "width" + "}", width.toString())
        .replaceAll("{" + "height" + "}", height.toString());

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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Create one Image resource.
  ///
  ///
  Future<Feedback> postImageByFeedback(
      String xKeyclicApp, ImageData imageData, String feedback,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = imageData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (imageData == null) {
      throw ApiException(400, "Missing required param: imageData");
    }
    if (feedback == null) {
      throw ApiException(400, "Missing required param: feedback");
    }

    // create path and map variables
    String path = "/feedbacks/{feedback}/images"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

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
      return apiClient.deserialize(response.body, 'Feedback') as Feedback;
    } else {
      return null;
    }
  }

  /// Create one Image resource.
  ///
  ///
  Future<Operation> postImageByOperation(
      String xKeyclicApp, ImageData imageData, String operation,
      {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = imageData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (imageData == null) {
      throw ApiException(400, "Missing required param: imageData");
    }
    if (operation == null) {
      throw ApiException(400, "Missing required param: operation");
    }

    // create path and map variables
    String path = "/operations/{operation}/images"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

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
      return apiClient.deserialize(response.body, 'Operation') as Operation;
    } else {
      return null;
    }
  }
}
