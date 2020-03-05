part of keyclic_sdk_api.api;

class DeviceData {
  DeviceData({
    this.token,
    this.platform,
    this.person,
  });

  factory DeviceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceData(
      token: json['token'],
      platform: json['platform'],
      person: json['person'],
    );
  }

  String token;

  String platform;

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceData &&
        runtimeType == other.runtimeType &&
        token == other.token &&
        platform == other.platform &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= token?.hashCode ?? 0;
    hashCode ^= platform?.hashCode ?? 0;
    hashCode ^= person?.hashCode ?? 0;

    return hashCode;
  }

  static List<DeviceData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => DeviceData.fromJson(value))?.toList() ??
        <DeviceData>[];
  }

  static Map<String, DeviceData> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, DeviceData.fromJson(value));
        }) ??
        <String, DeviceData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (token != null) 'token': token,
      if (platform != null) 'platform': platform,
      if (person != null) 'person': person,
    };
  }

  @override
  String toString() {
    return 'DeviceData[token=$token, platform=$platform, person=$person, ]';
  }
}
