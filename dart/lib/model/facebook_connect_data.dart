part of keyclic_sdk_api.api;

class FacebookConnectData {
  FacebookConnectData({
    this.accessToken,
  });

  FacebookConnectData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    accessToken = json['accessToken'];
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

    hashCode ^= (accessToken?.hashCode ?? 0);

    return hashCode;
  }

  static List<FacebookConnectData> listFromJson(List<dynamic> json) {
    return json == null
        ? <FacebookConnectData>[]
        : json
            .map((dynamic value) => FacebookConnectData.fromJson(value))
            .toList();
  }

  static Map<String, FacebookConnectData> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FacebookConnectData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FacebookConnectData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
    };
  }

  @override
  String toString() {
    return 'FacebookConnectData[accessToken=$accessToken, ]';
  }
}
