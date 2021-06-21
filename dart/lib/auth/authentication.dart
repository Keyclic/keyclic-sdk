// @dart=2.10
part of keyclic_sdk_api.api;

abstract class Authentication {
  /// Apply authentication settings to header and query params.
  void applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams);

  void setAccessToken(String value);
}
