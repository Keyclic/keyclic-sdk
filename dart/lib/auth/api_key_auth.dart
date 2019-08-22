part of keyclic_sdk_api.api;

class ApiKeyAuth implements Authentication {
  ApiKeyAuth(this.location, this.paramName);

  final String location;
  final String paramName;

  String _apiKey;

  @override
  void applyToParams(
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    if (location == 'query' && _apiKey != null) {
      queryParams.add(QueryParam(paramName, _apiKey));
    }

    if (location == 'header' && _apiKey != null) {
      headerParams[paramName] = _apiKey;
    }
  }

  @override
  void setAccessToken(String value) => _apiKey = value;
}
