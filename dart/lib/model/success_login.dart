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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLogin &&
        runtimeType == other.runtimeType &&
        accessToken == other.accessToken &&
        credentials == other.credentials &&
        tokenType == other.tokenType;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= accessToken?.hashCode ?? 0;
    hashCode ^= credentials?.hashCode ?? 0;
    hashCode ^= tokenType?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLogin> listFromJson(List<dynamic> json) {
    return json == null
        ? <SuccessLogin>[]
        : json.map((dynamic value) => SuccessLogin.fromJson(value)).toList();
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
