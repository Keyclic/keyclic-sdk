part of keyclic_sdk_api.api;

class DeviceApi {
  DeviceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Device resource.
  ///
  ///
  Future<void> deleteDeviceByPersonAndDevice(
    String xKeyclicApp,
    String person,
    String device, {
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

    if (device == null) {
      throw ApiException(0, "Missing required param: device");
    }

    // create path and map variables
    String path = "/people/{person}/devices/{device}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString())
        .replaceAll("{" + "device" + "}", device.toString());

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return;
    }

    return;
  }

  /// Create one Device resource.
  ///
  ///
  Future<Device> postDeviceByPerson(
    String xKeyclicApp,
    DeviceData deviceData,
    String person, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (deviceData == null) {
      throw ApiException(0, "Missing required param: deviceData");
    }

    if (person == null) {
      throw ApiException(0, "Missing required param: person");
    }

    // create path and map variables
    String path = "/people/{person}/devices"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "person" + "}", person.toString());

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

    Object postBody = deviceData;

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }

    if (response.body == null) {
      return null;
    }

    return apiClient.deserialize(response.body, 'Device') as Device;
  }
}
