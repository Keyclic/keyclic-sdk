part of keyclic_sdk_api.api;

class FacebookConnectData {
  FacebookConnectData({
    this.accessToken,
  });

  factory FacebookConnectData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FacebookConnectData(
      accessToken: json['accessToken'],
    );
  }

  String accessToken;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FacebookConnectData &&
        runtimeType == other.runtimeType &&
        accessToken == other.accessToken;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= accessToken?.hashCode ?? 0;

    return hashCode;
  }

  static List<FacebookConnectData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FacebookConnectData.fromJson(value))
            ?.toList() ??
        <FacebookConnectData>[];
  }

  static Map<String, FacebookConnectData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FacebookConnectData>((String key, dynamic value) {
          return MapEntry(key, FacebookConnectData.fromJson(value));
        }) ??
        <String, FacebookConnectData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (accessToken != null) 'accessToken': accessToken,
    };
  }

  @override
  String toString() {
    return 'FacebookConnectData[accessToken=$accessToken, ]';
  }
}
