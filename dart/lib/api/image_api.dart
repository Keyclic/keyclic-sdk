part of keyclic_sdk_api.api;

class ImageApi {
  ImageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Image resource.
  ///
  ///
  Future<void> deleteImageByOperationAndImage(
    String xKeyclicApp,
    String operation,
    String image, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (operation == null) {
      throw ApiException(0, "Missing required param: operation");
    }

    if (image == null) {
      throw ApiException(0, "Missing required param: image");
    }

    // create path and map variables
    final String path = "/operations/{operation}/images/{image}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString())
        .replaceAll("{" + "image" + "}", image.toString());

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
      return;
    }

    return;
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByBusinessActivityAndWidthAndHeight(
    String xKeyclicApp,
    String businessActivity,
    String width,
    String height, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (businessActivity == null) {
      throw ApiException(0, "Missing required param: businessActivity");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    final String path =
        "/businessactivities/{businessActivity}/image/{width}/{height}"
            .replaceAll("{format}", "json")
            .replaceAll(
                "{" + "businessActivity" + "}", businessActivity.toString())
            .replaceAll("{" + "width" + "}", width.toString())
            .replaceAll("{" + "height" + "}", height.toString());

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

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByFeedbackAndImageAndWidthAndHeight(
    String xKeyclicApp,
    String feedback,
    String image,
    String width,
    String height, {
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

    if (image == null) {
      throw ApiException(0, "Missing required param: image");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    final String path = "/feedbacks/{feedback}/images/{image}/{width}/{height}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString())
        .replaceAll("{" + "image" + "}", image.toString())
        .replaceAll("{" + "width" + "}", width.toString())
        .replaceAll("{" + "height" + "}", height.toString());

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

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByOperationAndImageAndWidthAndHeight(
    String xKeyclicApp,
    String operation,
    String image,
    String width,
    String height, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (operation == null) {
      throw ApiException(0, "Missing required param: operation");
    }

    if (image == null) {
      throw ApiException(0, "Missing required param: image");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    final String path =
        "/operations/{operation}/images/{image}/{width}/{height}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "operation" + "}", operation.toString())
            .replaceAll("{" + "image" + "}", image.toString())
            .replaceAll("{" + "width" + "}", width.toString())
            .replaceAll("{" + "height" + "}", height.toString());

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

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }

  /// Retrieve one Image resource.
  ///
  ///
  Future<MultipartFile> getImageByPersonAndWidthAndHeight(
    String xKeyclicApp,
    String person,
    String width,
    String height, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    if (width == null) {
      throw ApiException(0, "Missing required param: width");
    }

    if (height == null) {
      throw ApiException(0, "Missing required param: height");
    }

    // create path and map variables
    final String path = "/people/{person}/image/{width}/{height}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString())
        .replaceAll("{" + "width" + "}", width.toString())
        .replaceAll("{" + "height" + "}", height.toString());

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

    return apiClient.deserialize(response.body, 'MultipartFile')
        as MultipartFile;
  }

  /// Create one Image resource.
  ///
  ///
  Future<Feedback> postImageByFeedback(
    String xKeyclicApp,
    ImageData imageData,
    String feedback, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (imageData == null) {
      throw ApiException(0, "Missing required param: imageData");
    }

    if (feedback == null) {
      throw ApiException(0, "Missing required param: feedback");
    }

    // create path and map variables
    final String path = "/feedbacks/{feedback}/images"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "feedback" + "}", feedback.toString());

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

    final ImageData postBody = imageData;

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

    return apiClient.deserialize(response.body, 'Feedback') as Feedback;
  }

  /// Create one Image resource.
  ///
  ///
  Future<Operation> postImageByOperation(
    String xKeyclicApp,
    ImageData imageData,
    String operation, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (imageData == null) {
      throw ApiException(0, "Missing required param: imageData");
    }

    if (operation == null) {
      throw ApiException(0, "Missing required param: operation");
    }

    // create path and map variables
    final String path = "/operations/{operation}/images"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "operation" + "}", operation.toString());

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

    final ImageData postBody = imageData;

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

    return apiClient.deserialize(response.body, 'Operation') as Operation;
  }
}
