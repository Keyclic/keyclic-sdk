part of keyclic_sdk_api.api;

class OAuth implements Authentication {
  String _oauthToken;

  @override
  void applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (_oauthToken != null) {
      headerParams["Authorization"] = "Bearer $_oauthToken";
    }
  }

  @override
  void setAccessToken(String value) => _oauthToken = value;
}
