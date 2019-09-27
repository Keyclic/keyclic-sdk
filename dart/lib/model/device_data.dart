part of keyclic_sdk_api.api;

class DeviceData {
  DeviceData({
    this.token,
    this.platform,
    this.person,
  });

  DeviceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    token = json['token'];
    platform = json['platform'];
    person = json['person'];
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
    return json == null
        ? <DeviceData>[]
        : json.map((dynamic value) => DeviceData.fromJson(value)).toList();
  }

  static Map<String, DeviceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = DeviceData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'platform': platform,
      'person': person,
    };
  }

  @override
  String toString() {
    return 'DeviceData[token=$token, platform=$platform, person=$person, ]';
  }
}
