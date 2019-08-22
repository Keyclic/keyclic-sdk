part of keyclic_sdk_api.api;

class HttpBasicAuth implements Authentication {
  String _basicToken;

  @override
  void applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (_basicToken != null) {
      headerParams["Authorization"] = "Basic $_basicToken";
    }
  }

  /// value must be '${username ?? ""}:${password ?? ""}'
  @override
  void setAccessToken(String value) =>
      _basicToken = base64.encode(utf8.encode(value));
}
