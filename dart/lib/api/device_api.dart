part of keyclic_sdk_api.api;

class DeviceApi {
  final ApiClient apiClient;

  DeviceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Remove one Device resource.
  ///
  ///
  Future deleteDeviceByPersonAndDevice(String xKeyclicApp, String person, String device, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (person == null) {
      throw ApiException(400, "Missing required param: person");
    }
    if (device == null) {
      throw ApiException(400, "Missing required param: device");
    }

    // create path and map variables
    String path = "/people/{person}/devices/{device}".replaceAll("{format}", "json").replaceAll("{" + "person" + "}", person.toString()).replaceAll("{" + "device" + "}", device.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Create one Device resource.
  ///
  ///
  Future<Device> postDeviceByPerson(String xKeyclicApp, DeviceData deviceData, String person, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = deviceData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (deviceData == null) {
      throw ApiException(400, "Missing required param: deviceData");
    }
    if (person == null) {
      throw ApiException(400, "Missing required param: person");
    }

    // create path and map variables
    String path = "/people/{person}/devices".replaceAll("{format}", "json").replaceAll("{" + "person" + "}", person.toString());

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Device') as Device;
    } else {
      return null;
    }
  }
}
