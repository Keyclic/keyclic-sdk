part of keyclic_sdk_api.api;

class WebhookApi {
  WebhookApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Remove one Webhook resource.
  ///
  ///
  Future<void> deleteWebhook(
    String xKeyclicApp,
    String webhook, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (webhook == null) {
      throw ApiException(0, "Missing required param: webhook");
    }

    // create path and map variables
    final String path = "/webhooks/{webhook}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "webhook" + "}", webhook.toString());

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

  /// Retrieve one Webhook resource.
  ///
  ///
  Future<Webhook> getWebhook(
    String xKeyclicApp,
    String webhook, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (webhook == null) {
      throw ApiException(0, "Missing required param: webhook");
    }

    // create path and map variables
    final String path = "/webhooks/{webhook}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "webhook" + "}", webhook.toString());

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

    return apiClient.deserialize(response.body, 'Webhook') as Webhook;
  }

  /// Edit one Webhook resource.
  ///
  ///
  Future<Webhook> patchWebhook(
    String xKeyclicApp,
    WebhookPatch webhookPatch,
    String webhook, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (webhookPatch == null) {
      throw ApiException(0, "Missing required param: webhookPatch");
    }

    if (webhook == null) {
      throw ApiException(0, "Missing required param: webhook");
    }

    // create path and map variables
    final String path = "/webhooks/{webhook}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "webhook" + "}", webhook.toString());

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

    final WebhookPatch postBody = webhookPatch;

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

    return apiClient.deserialize(response.body, 'Webhook') as Webhook;
  }

  /// Create one Webhook resource.
  ///
  ///
  Future<Webhook> postWebhook(
    String xKeyclicApp,
    WebhookData webhookData, {
    String acceptLanguage,
    String xKeyclicAppVersion,
  }) async {
    // verify required params are set

    if (xKeyclicApp == null) {
      throw ApiException(0, "Missing required param: xKeyclicApp");
    }

    if (webhookData == null) {
      throw ApiException(0, "Missing required param: webhookData");
    }

    // create path and map variables
    final String path = "/webhooks".replaceAll("{format}", "json");

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

    final WebhookData postBody = webhookData;

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

    return apiClient.deserialize(response.body, 'Webhook') as Webhook;
  }
}
