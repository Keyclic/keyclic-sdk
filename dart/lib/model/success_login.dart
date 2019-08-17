part of keyclic_sdk_api.api;

class SuccessLogin {
  SuccessLogin({
    this.accessToken,
    this.credentials,
    this.tokenType,
  });

  SuccessLogin.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    accessToken = json['accessToken'];
    credentials = SuccessLoginCredentials.fromJson(json['credentials']);
    tokenType = json['tokenType'];
  }

  String accessToken;

  SuccessLoginCredentials credentials;

  String tokenType;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLogin && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<SuccessLogin> listFromJson(List<dynamic> json) {
    return json == null
        ? List<SuccessLogin>()
        : json.map((value) => SuccessLogin.fromJson(value)).toList();
  }

  static Map<String, SuccessLogin> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SuccessLogin>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SuccessLogin.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'credentials': credentials,
      'tokenType': tokenType,
    };
  }

  @override
  String toString() {
    return 'SuccessLogin[accessToken=$accessToken, credentials=$credentials, tokenType=$tokenType, ]';
  }
}
